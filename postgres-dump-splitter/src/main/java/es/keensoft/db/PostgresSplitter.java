package es.keensoft.db;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.core.env.PropertySource;
import org.springframework.core.env.SimpleCommandLinePropertySource;

@SpringBootApplication
public class PostgresSplitter implements CommandLineRunner {
	
	private static final Logger logger = LoggerFactory.getLogger(PostgresSplitter.class);
	
	private String pgdumpPath = "";
	private String outputDirectory = "";

	private static final String ALL_STATEMENTS = "all_statements.sql";
	private static final String INDEX_CONSTRAINTS = "index_constraints.sql";
	private static final String SEQUENCES = "sequences.sql";
	private static final String UPDATE_SEQUENCES = "update_sequences.sql";
	private static final String TABLES = "tables.sql";
	
	private static final String COPY_BLOCK_START = "COPY";
	private static final String COPY_BLOCK_END = "\\.";
	
	private static final String ALTER_TABLE_START = "ALTER TABLE";
	private static final String CREATE_INDEX_START = "CREATE INDEX";
	private static final String CREATE_SEQUENCE = "CREATE SEQUENCE";
	private static final String CREATE_TABLE ="CREATE TABLE";
	
	private static final String DDL_SENTENCE_END = ";";
	
	private void loadFromProperties(PropertySource<?> properties) {
		try {
			pgdumpPath = properties.getProperty("pgdump.path").toString();
			if (properties.getProperty("output.dir") != null) {
				outputDirectory = properties.getProperty("output.dir").toString();
			}
		} catch (Exception e) {
			throw new RuntimeException("SAMPLE PARAMS: " + 
		        "--pgdump.path=/home/alfresco/pgdump_alfresco_3.4.2.sql " +
				"--output.directory=/home/alfresco/auto");
		}
	}
	
	@Override
	public void run(String... args) throws Exception {
		
		loadFromProperties(new SimpleCommandLinePropertySource(args));
		
		// ALL STATEMENTS: skip "COPY" sentences
		File pgDump = new File(pgdumpPath);
		File allStatements = new File(outputDirectory + ALL_STATEMENTS);
		BufferedReader br = new BufferedReader(new FileReader(pgDump));
		BufferedWriter bw = new BufferedWriter(new FileWriter(allStatements));
		
		String line = null;
		boolean insideCopyBlock = false;
		while ((line = br.readLine()) != null) {
			
			if (!insideCopyBlock) {
				if (!line.startsWith(COPY_BLOCK_START)) {
				    bw.write(line + System.lineSeparator());
				} else {
					insideCopyBlock = true;
				}
			} else {
				insideCopyBlock = !line.equals(COPY_BLOCK_END);
			}
			
		}
		
		br.close();
		bw.close();
		
		logger.info("All statements file generated at " + allStatements.getPath());
		
		// INDEX & CONSTRAINTS
		pgDump = new File(pgdumpPath);
		File indexConstraints = new File(outputDirectory + INDEX_CONSTRAINTS);
		br = new BufferedReader(new FileReader(pgDump));
		bw = new BufferedWriter(new FileWriter(indexConstraints));
		
		line = null;
		boolean insideIndexConstraint = false;
		while ((line = br.readLine()) != null) {
			
			if (!insideIndexConstraint) {
				if (line.startsWith(ALTER_TABLE_START) || line.startsWith(CREATE_INDEX_START)) {
				    bw.write(line + System.lineSeparator());
				    insideIndexConstraint = !line.endsWith(DDL_SENTENCE_END);
					if (!insideIndexConstraint) bw.write(System.lineSeparator());
				} else {
					insideIndexConstraint = false;
				}
			} else {
			    bw.write(line + System.lineSeparator());
				insideIndexConstraint = !line.endsWith(DDL_SENTENCE_END);
				if (!insideIndexConstraint) bw.write(System.lineSeparator());
			}
			
		}
		
		br.close();
		bw.close();
		
		logger.info("Index & constraints file generated at " + indexConstraints.getPath());
		
		// SEQUENCES
		List<String> sequencesList = new ArrayList<String>();
		pgDump = new File(pgdumpPath);
		File sequences = new File(outputDirectory + SEQUENCES);
		br = new BufferedReader(new FileReader(pgDump));
		bw = new BufferedWriter(new FileWriter(sequences));
		
		line = null;
		boolean insideSequence = false;
		while ((line = br.readLine()) != null) {
			
			if (!insideSequence) {
				if (line.startsWith(CREATE_SEQUENCE)) {
				    bw.write(line + System.lineSeparator());
				    sequencesList.add(line.substring(CREATE_SEQUENCE.length() + 1));
				    insideSequence = !line.endsWith(DDL_SENTENCE_END);
					if (!insideSequence) bw.write(System.lineSeparator());
				} else {
					insideSequence = false;
				}
			} else {
			    bw.write(line + System.lineSeparator());
			    insideSequence = !line.endsWith(DDL_SENTENCE_END);
				if (!insideSequence) bw.write(System.lineSeparator());
			}
			
		}
		
		br.close();
		bw.close();
		
		logger.info("Sequences file generated at " + sequences.getPath());
		
		// UPDATE SEQUENCES
		File updateSequences = new File(outputDirectory + UPDATE_SEQUENCES);
		bw = new BufferedWriter(new FileWriter(updateSequences));
		for (String sequence : sequencesList) {
			String sql = "";
			if (sequence.equals("alf_activity_post_seq")) {
				sql = "select setval('" + sequence + "', " +
				        "(select max(sequence_id)+1 from " + sequence.substring(0, sequence.length() - 4) + "), false);";
			}
			else if (!sequence.equals("hibernate_sequence")) {
				sql = "select setval('" + sequence + "', " +
			        "(select max(id)+1 from " + sequence.substring(0, sequence.length() - 4) + "), false);";
			}
			bw.write(sql + System.lineSeparator() + System.lineSeparator());
		}
		bw.close();
		
		logger.info("Update sequences file generated at " + updateSequences.getPath());
		
		// TABLES
		pgDump = new File(pgdumpPath);
		File tables = new File(outputDirectory + TABLES);
		br = new BufferedReader(new FileReader(pgDump));
		bw = new BufferedWriter(new FileWriter(tables));
		
		line = null;
		boolean insideTable = false;
		while ((line = br.readLine()) != null) {
			
			if (!insideTable) {
				if (line.startsWith(CREATE_TABLE)) {
				    bw.write(line + System.lineSeparator());
				    insideTable = !line.endsWith(DDL_SENTENCE_END);
					if (!insideTable) bw.write(System.lineSeparator());
				} else {
					insideTable = false;
				}
			} else {
			    bw.write(line + System.lineSeparator());
			    insideTable = !line.endsWith(DDL_SENTENCE_END);
				if (!insideTable) bw.write(System.lineSeparator());
			}
			
		}
		
		br.close();
		bw.close();
		
		logger.info("Tables file generated at " + tables.getPath());

	}
	
	public static void main(String[] args) throws Exception {
		SpringApplication.run(PostgresSplitter.class, args);
	}

}
