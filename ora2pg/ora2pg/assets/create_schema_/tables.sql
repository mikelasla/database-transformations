--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.4
-- Dumped by pg_dump version 9.4.5
-- Started on 2016-03-07 12:02:07 CET

begin transaction;

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 173 (class 1259 OID 274466)
-- Name: act_ge_bytearray; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_ge_bytearray (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255),
    deployment_id_ character varying(64),
    bytes_ bytea,
    generated_ boolean
);



--
-- TOC entry 172 (class 1259 OID 274461)
-- Name: act_ge_property; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_ge_property (
    name_ character varying(64) NOT NULL,
    value_ character varying(300),
    rev_ integer
);



--
-- TOC entry 183 (class 1259 OID 274641)
-- Name: act_hi_actinst; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_hi_actinst (
    id_ character varying(64) NOT NULL,
    proc_def_id_ character varying(64) NOT NULL,
    proc_inst_id_ character varying(64) NOT NULL,
    execution_id_ character varying(64) NOT NULL,
    act_id_ character varying(255) NOT NULL,
    act_name_ character varying(255),
    act_type_ character varying(255) NOT NULL,
    assignee_ character varying(255),
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    duration_ bigint
);



--
-- TOC entry 187 (class 1259 OID 274673)
-- Name: act_hi_attachment; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_hi_attachment (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    user_id_ character varying(255),
    name_ character varying(255),
    description_ character varying(4000),
    type_ character varying(255),
    task_id_ character varying(64),
    proc_inst_id_ character varying(64),
    url_ character varying(4000),
    content_id_ character varying(64)
);



--
-- TOC entry 186 (class 1259 OID 274665)
-- Name: act_hi_comment; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_hi_comment (
    id_ character varying(64) NOT NULL,
    type_ character varying(255),
    time_ timestamp without time zone NOT NULL,
    user_id_ character varying(255),
    task_id_ character varying(64),
    proc_inst_id_ character varying(64),
    action_ character varying(255),
    message_ character varying(4000),
    full_msg_ bytea
);



--
-- TOC entry 185 (class 1259 OID 274657)
-- Name: act_hi_detail; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_hi_detail (
    id_ character varying(64) NOT NULL,
    type_ character varying(255) NOT NULL,
    proc_inst_id_ character varying(64) NOT NULL,
    execution_id_ character varying(64) NOT NULL,
    task_id_ character varying(64),
    act_inst_id_ character varying(64),
    name_ character varying(255) NOT NULL,
    var_type_ character varying(64),
    rev_ integer,
    time_ timestamp without time zone NOT NULL,
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000)
);



--
-- TOC entry 182 (class 1259 OID 274629)
-- Name: act_hi_procinst; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_hi_procinst (
    id_ character varying(64) NOT NULL,
    proc_inst_id_ character varying(64) NOT NULL,
    business_key_ character varying(255),
    proc_def_id_ character varying(64) NOT NULL,
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    duration_ bigint,
    start_user_id_ character varying(255),
    start_act_id_ character varying(255),
    end_act_id_ character varying(255),
    super_process_instance_id_ character varying(64),
    delete_reason_ character varying(4000)
);



--
-- TOC entry 184 (class 1259 OID 274649)
-- Name: act_hi_taskinst; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_hi_taskinst (
    id_ character varying(64) NOT NULL,
    proc_def_id_ character varying(64),
    task_def_key_ character varying(255),
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    name_ character varying(255),
    parent_task_id_ character varying(64),
    description_ character varying(4000),
    owner_ character varying(255),
    assignee_ character varying(255),
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    duration_ bigint,
    delete_reason_ character varying(4000),
    priority_ integer,
    due_date_ timestamp without time zone
);



--
-- TOC entry 188 (class 1259 OID 274691)
-- Name: act_id_group; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_id_group (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255),
    type_ character varying(255)
);



--
-- TOC entry 191 (class 1259 OID 274712)
-- Name: act_id_info; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_id_info (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    user_id_ character varying(64),
    type_ character varying(64),
    key_ character varying(255),
    value_ character varying(255),
    password_ bytea,
    parent_id_ character varying(255)
);



--
-- TOC entry 189 (class 1259 OID 274699)
-- Name: act_id_membership; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_id_membership (
    user_id_ character varying(64) NOT NULL,
    group_id_ character varying(64) NOT NULL
);



--
-- TOC entry 190 (class 1259 OID 274704)
-- Name: act_id_user; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_id_user (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    first_ character varying(255),
    last_ character varying(255),
    email_ character varying(255),
    pwd_ character varying(255),
    picture_id_ character varying(64)
);



--
-- TOC entry 174 (class 1259 OID 274474)
-- Name: act_re_deployment; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_re_deployment (
    id_ character varying(64) NOT NULL,
    name_ character varying(255),
    deploy_time_ timestamp without time zone
);



--
-- TOC entry 177 (class 1259 OID 274497)
-- Name: act_re_procdef; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_re_procdef (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    category_ character varying(255),
    name_ character varying(255),
    key_ character varying(255),
    version_ integer,
    deployment_id_ character varying(64),
    resource_name_ character varying(4000),
    dgrm_resource_name_ character varying(4000),
    has_start_form_key_ boolean,
    suspension_state_ integer
);



--
-- TOC entry 181 (class 1259 OID 274529)
-- Name: act_ru_event_subscr; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_ru_event_subscr (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    event_type_ character varying(255) NOT NULL,
    event_name_ character varying(255),
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    activity_id_ character varying(64),
    configuration_ character varying(255),
    created_ timestamp without time zone NOT NULL
);



--
-- TOC entry 175 (class 1259 OID 274479)
-- Name: act_ru_execution; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_ru_execution (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    proc_inst_id_ character varying(64),
    business_key_ character varying(255),
    parent_id_ character varying(64),
    proc_def_id_ character varying(64),
    super_exec_ character varying(64),
    act_id_ character varying(255),
    is_active_ boolean,
    is_concurrent_ boolean,
    is_scope_ boolean,
    is_event_scope_ boolean,
    suspension_state_ integer,
    cached_ent_state_ integer
);



--
-- TOC entry 179 (class 1259 OID 274513)
-- Name: act_ru_identitylink; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_ru_identitylink (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    group_id_ character varying(255),
    type_ character varying(255),
    user_id_ character varying(255),
    task_id_ character varying(64),
    proc_def_id_ character varying(64)
);



--
-- TOC entry 176 (class 1259 OID 274489)
-- Name: act_ru_job; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_ru_job (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    type_ character varying(255) NOT NULL,
    lock_exp_time_ timestamp without time zone,
    lock_owner_ character varying(255),
    exclusive_ boolean,
    execution_id_ character varying(64),
    process_instance_id_ character varying(64),
    retries_ integer,
    exception_stack_id_ character varying(64),
    exception_msg_ character varying(4000),
    duedate_ timestamp without time zone,
    repeat_ character varying(255),
    handler_type_ character varying(255),
    handler_cfg_ character varying(4000)
);



--
-- TOC entry 178 (class 1259 OID 274505)
-- Name: act_ru_task; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_ru_task (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    name_ character varying(255),
    parent_task_id_ character varying(64),
    description_ character varying(4000),
    task_def_key_ character varying(255),
    owner_ character varying(255),
    assignee_ character varying(255),
    delegation_ character varying(64),
    priority_ integer,
    create_time_ timestamp without time zone,
    due_date_ timestamp without time zone
);



--
-- TOC entry 180 (class 1259 OID 274521)
-- Name: act_ru_variable; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE act_ru_variable (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    type_ character varying(255) NOT NULL,
    name_ character varying(255) NOT NULL,
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    task_id_ character varying(64),
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000)
);



--
-- TOC entry 206 (class 1259 OID 274808)
-- Name: alf_access_control_entry; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_access_control_entry (
    id bigint NOT NULL,
    version bigint NOT NULL,
    permission_id bigint NOT NULL,
    authority_id bigint NOT NULL,
    allowed boolean NOT NULL,
    applies integer NOT NULL,
    context_id bigint
);


--
-- TOC entry 210 (class 1259 OID 274842)
-- Name: alf_access_control_list; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_access_control_list (
    id bigint NOT NULL,
    version bigint NOT NULL,
    acl_id character varying(36) NOT NULL,
    latest boolean NOT NULL,
    acl_version bigint NOT NULL,
    inherits boolean NOT NULL,
    inherits_from bigint,
    type integer NOT NULL,
    inherited_acl bigint,
    is_versioned boolean NOT NULL,
    requires_version boolean NOT NULL,
    acl_change_set bigint
);



--
-- TOC entry 202 (class 1259 OID 274789)
-- Name: alf_ace_context; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_ace_context (
    id bigint NOT NULL,
    version bigint NOT NULL,
    class_context character varying(1024),
    property_context character varying(1024),
    kvp_context character varying(1024)
);



--
-- TOC entry 208 (class 1259 OID 274834)
-- Name: alf_acl_change_set; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_acl_change_set (
    id bigint NOT NULL,
    commit_time_ms bigint
);


--
-- TOC entry 212 (class 1259 OID 274857)
-- Name: alf_acl_member; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_acl_member (
    id bigint NOT NULL,
    version bigint NOT NULL,
    acl_id bigint NOT NULL,
    ace_id bigint NOT NULL,
    pos integer NOT NULL
);


--
-- TOC entry 278 (class 1259 OID 275544)
-- Name: alf_activity_feed; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_activity_feed (
    id bigint NOT NULL,
    post_id bigint,
    post_date timestamp without time zone NOT NULL,
    activity_summary character varying(1024),
    feed_user_id character varying(255),
    activity_type character varying(255) NOT NULL,
    activity_format character varying(10),
    site_network character varying(255),
    app_tool character varying(36),
    post_user_id character varying(255) NOT NULL,
    feed_date timestamp without time zone NOT NULL
);



--
-- TOC entry 280 (class 1259 OID 275559)
-- Name: alf_activity_feed_control; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_activity_feed_control (
    id bigint NOT NULL,
    feed_user_id character varying(255) NOT NULL,
    site_network character varying(255),
    app_tool character varying(36),
    last_modified timestamp without time zone NOT NULL
);


--
-- TOC entry 282 (class 1259 OID 275570)
-- Name: alf_activity_post; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_activity_post (
    sequence_id bigint NOT NULL,
    post_date timestamp without time zone NOT NULL,
    status character varying(10) NOT NULL,
    activity_data character varying(1024) NOT NULL,
    post_user_id character varying(255) NOT NULL,
    job_task_node integer NOT NULL,
    site_network character varying(255),
    app_tool character varying(36),
    activity_type character varying(255) NOT NULL,
    last_modified timestamp without time zone NOT NULL
);


--
-- TOC entry 192 (class 1259 OID 274735)
-- Name: alf_applied_patch; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_applied_patch (
    id character varying(64) NOT NULL,
    description character varying(1024),
    fixes_from_schema integer,
    fixes_to_schema integer,
    applied_to_schema integer,
    target_schema integer,
    applied_on_date timestamp without time zone,
    applied_to_server character varying(64),
    was_executed boolean,
    succeeded boolean,
    report character varying(1024)
);



--
-- TOC entry 260 (class 1259 OID 275296)
-- Name: alf_audit_app; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_audit_app (
    id bigint NOT NULL,
    version integer NOT NULL,
    app_name_id bigint NOT NULL,
    audit_model_id bigint NOT NULL,
    disabled_paths_id bigint NOT NULL
);



--
-- TOC entry 262 (class 1259 OID 275322)
-- Name: alf_audit_entry; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_audit_entry (
    id bigint NOT NULL,
    audit_app_id bigint NOT NULL,
    audit_time bigint NOT NULL,
    audit_user_id bigint,
    audit_values_id bigint
);



--
-- TOC entry 258 (class 1259 OID 275282)
-- Name: alf_audit_model; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_audit_model (
    id bigint NOT NULL,
    content_data_id bigint NOT NULL,
    content_crc bigint NOT NULL
);



--
-- TOC entry 204 (class 1259 OID 274799)
-- Name: alf_authority; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_authority (
    id bigint NOT NULL,
    version bigint NOT NULL,
    authority character varying(100),
    crc bigint
);



--
-- TOC entry 214 (class 1259 OID 274877)
-- Name: alf_authority_alias; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_authority_alias (
    id bigint NOT NULL,
    version bigint NOT NULL,
    auth_id bigint NOT NULL,
    alias_id bigint NOT NULL
);


--
-- TOC entry 224 (class 1259 OID 274974)
-- Name: alf_child_assoc; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_child_assoc (
    id bigint NOT NULL,
    version bigint NOT NULL,
    parent_node_id bigint NOT NULL,
    type_qname_id bigint NOT NULL,
    child_node_name_crc bigint NOT NULL,
    child_node_name character varying(50) NOT NULL,
    child_node_id bigint NOT NULL,
    qname_ns_id bigint NOT NULL,
    qname_localname character varying(255) NOT NULL,
    qname_crc bigint NOT NULL,
    is_primary boolean,
    assoc_index integer
);


--
-- TOC entry 240 (class 1259 OID 275136)
-- Name: alf_content_data; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_content_data (
    id bigint NOT NULL,
    version bigint NOT NULL,
    content_url_id bigint,
    content_mimetype_id bigint,
    content_encoding_id bigint,
    content_locale_id bigint
);


--
-- TOC entry 238 (class 1259 OID 275127)
-- Name: alf_content_url; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_content_url (
    id bigint NOT NULL,
    content_url character varying(255) NOT NULL,
    content_url_short character varying(12) NOT NULL,
    content_url_crc bigint NOT NULL,
    content_size bigint NOT NULL,
    orphan_time bigint
);


-- TOC entry 236 (class 1259 OID 275118)
-- Name: alf_encoding; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_encoding (
    id bigint NOT NULL,
    version bigint NOT NULL,
    encoding_str character varying(100) NOT NULL
);



--
-- TOC entry 194 (class 1259 OID 274745)
-- Name: alf_locale; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_locale (
    id bigint NOT NULL,
    version bigint NOT NULL,
    locale_str character varying(20) NOT NULL
);



--
-- TOC entry 232 (class 1259 OID 275090)
-- Name: alf_lock; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_lock (
    id bigint NOT NULL,
    version bigint NOT NULL,
    shared_resource_id bigint NOT NULL,
    excl_resource_id bigint NOT NULL,
    lock_token character varying(36) NOT NULL,
    start_time bigint NOT NULL,
    expiry_time bigint NOT NULL
);



--
-- TOC entry 230 (class 1259 OID 275077)
-- Name: alf_lock_resource; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_lock_resource (
    id bigint NOT NULL,
    version bigint NOT NULL,
    qname_ns_id bigint NOT NULL,
    qname_localname character varying(255) NOT NULL
);


-- TOC entry 234 (class 1259 OID 275109)
-- Name: alf_mimetype; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_mimetype (
    id bigint NOT NULL,
    version bigint NOT NULL,
    mimetype_str character varying(100) NOT NULL
);

--
-- TOC entry 196 (class 1259 OID 274753)
-- Name: alf_namespace; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_namespace (
    id bigint NOT NULL,
    version bigint NOT NULL,
    uri character varying(100) NOT NULL
);


--
-- TOC entry 222 (class 1259 OID 274927)
-- Name: alf_node; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_node (
    id bigint NOT NULL,
    version bigint NOT NULL,
    store_id bigint NOT NULL,
    uuid character varying(36) NOT NULL,
    transaction_id bigint NOT NULL,
    type_qname_id bigint NOT NULL,
    locale_id bigint NOT NULL,
    acl_id bigint,
    audit_creator character varying(255),
    audit_created character varying(30),
    audit_modifier character varying(255),
    audit_modified character varying(30),
    audit_accessed character varying(30)
);



--
-- TOC entry 225 (class 1259 OID 275006)
-- Name: alf_node_aspects; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_node_aspects (
    node_id bigint NOT NULL,
    qname_id bigint NOT NULL
);



--
-- TOC entry 227 (class 1259 OID 275025)
-- Name: alf_node_assoc; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_node_assoc (
    id bigint NOT NULL,
    version bigint NOT NULL,
    source_node_id bigint NOT NULL,
    target_node_id bigint NOT NULL,
    type_qname_id bigint NOT NULL,
    assoc_index bigint NOT NULL
);


--
-- TOC entry 228 (class 1259 OID 275049)
-- Name: alf_node_properties; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_node_properties (
    node_id bigint NOT NULL,
    actual_type_n integer NOT NULL,
    persisted_type_n integer NOT NULL,
    boolean_value boolean,
    long_value bigint,
    float_value real,
    double_value double precision,
    string_value character varying(1024),
    serializable_value bytea,
    qname_id bigint NOT NULL,
    list_index integer NOT NULL,
    locale_id bigint NOT NULL
);


--
-- TOC entry 200 (class 1259 OID 274775)
-- Name: alf_permission; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_permission (
    id bigint NOT NULL,
    version bigint NOT NULL,
    type_qname_id bigint NOT NULL,
    name character varying(100) NOT NULL
);



--
-- TOC entry 242 (class 1259 OID 275167)
-- Name: alf_prop_class; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_prop_class (
    id bigint NOT NULL,
    java_class_name character varying(255) NOT NULL,
    java_class_name_short character varying(32) NOT NULL,
    java_class_name_crc bigint NOT NULL
);


--
-- TOC entry 243 (class 1259 OID 275174)
-- Name: alf_prop_date_value; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_prop_date_value (
    date_value bigint NOT NULL,
    full_year integer NOT NULL,
    half_of_year smallint NOT NULL,
    quarter_of_year smallint NOT NULL,
    month_of_year smallint NOT NULL,
    week_of_year smallint NOT NULL,
    week_of_month smallint NOT NULL,
    day_of_year integer NOT NULL,
    day_of_month smallint NOT NULL,
    day_of_week smallint NOT NULL
);



--
-- TOC entry 245 (class 1259 OID 275182)
-- Name: alf_prop_double_value; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_prop_double_value (
    id bigint NOT NULL,
    double_value double precision NOT NULL
);



--
-- TOC entry 254 (class 1259 OID 275226)
-- Name: alf_prop_link; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_prop_link (
    root_prop_id bigint NOT NULL,
    prop_index bigint NOT NULL,
    contained_in bigint NOT NULL,
    key_prop_id bigint NOT NULL,
    value_prop_id bigint NOT NULL
);



--
-- TOC entry 253 (class 1259 OID 275221)
-- Name: alf_prop_root; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_prop_root (
    id bigint NOT NULL,
    version integer NOT NULL
);


--
-- TOC entry 249 (class 1259 OID 275202)
-- Name: alf_prop_serializable_value; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_prop_serializable_value (
    id bigint NOT NULL,
    serializable_value bytea NOT NULL
);


--
-- TOC entry 247 (class 1259 OID 275190)
-- Name: alf_prop_string_value; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_prop_string_value (
    id bigint NOT NULL,
    string_value character varying(1024) NOT NULL,
    string_end_lower character varying(16) NOT NULL,
    string_crc bigint NOT NULL
);


--
-- TOC entry 256 (class 1259 OID 275251)
-- Name: alf_prop_unique_ctx; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_prop_unique_ctx (
    id bigint NOT NULL,
    version integer NOT NULL,
    value1_prop_id bigint NOT NULL,
    value2_prop_id bigint NOT NULL,
    value3_prop_id bigint NOT NULL,
    prop1_id bigint
);



--
-- TOC entry 251 (class 1259 OID 275212)
-- Name: alf_prop_value; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_prop_value (
    id bigint NOT NULL,
    actual_type_id bigint NOT NULL,
    persisted_type smallint NOT NULL,
    long_value bigint NOT NULL
);



--
-- TOC entry 198 (class 1259 OID 274761)
-- Name: alf_qname; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_qname (
    id bigint NOT NULL,
    version bigint NOT NULL,
    ns_id bigint NOT NULL,
    local_name character varying(200) NOT NULL
);



--
-- TOC entry 216 (class 1259 OID 274897)
-- Name: alf_server; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_server (
    id bigint NOT NULL,
    version bigint NOT NULL,
    ip_address character varying(39) NOT NULL
);


--
-- TOC entry 220 (class 1259 OID 274919)
-- Name: alf_store; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_store (
    id bigint NOT NULL,
    version bigint NOT NULL,
    protocol character varying(50) NOT NULL,
    identifier character varying(100) NOT NULL,
    root_node_id bigint
);


--
-- TOC entry 285 (class 1259 OID 275593)
-- Name: alf_subscriptions; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_subscriptions (
    user_node_id bigint NOT NULL,
    node_id bigint NOT NULL
);



--
-- TOC entry 286 (class 1259 OID 275609)
-- Name: alf_tenant; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_tenant (
    tenant_domain character varying(75) NOT NULL,
    version bigint NOT NULL,
    enabled boolean NOT NULL,
    tenant_name character varying(75),
    content_root character varying(255),
    db_url character varying(255)
);



--
-- TOC entry 218 (class 1259 OID 274905)
-- Name: alf_transaction; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_transaction (
    id bigint NOT NULL,
    version bigint NOT NULL,
    server_id bigint,
    change_txn_id character varying(56) NOT NULL,
    commit_time_ms bigint
);



--
-- TOC entry 284 (class 1259 OID 275582)
-- Name: alf_usage_delta; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE alf_usage_delta (
    id bigint NOT NULL,
    version bigint NOT NULL,
    node_id bigint NOT NULL,
    delta_size bigint NOT NULL
);


--
-- TOC entry 263 (class 1259 OID 275346)
-- Name: avm_aspects; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE avm_aspects (
    node_id bigint NOT NULL,
    qname_id bigint NOT NULL
);



--
-- TOC entry 264 (class 1259 OID 275351)
-- Name: avm_child_entries; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE avm_child_entries (
    parent_id bigint NOT NULL,
    lc_name character varying(160) NOT NULL,
    name character varying(160) NOT NULL,
    child_id bigint NOT NULL
);



--
-- TOC entry 265 (class 1259 OID 275356)
-- Name: avm_history_links; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE avm_history_links (
    ancestor bigint NOT NULL,
    descendent bigint NOT NULL
);



--
-- TOC entry 266 (class 1259 OID 275361)
-- Name: avm_merge_links; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE avm_merge_links (
    mfrom bigint NOT NULL,
    mto bigint NOT NULL
);



--
-- TOC entry 267 (class 1259 OID 275366)
-- Name: avm_node_properties; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE avm_node_properties (
    node_id bigint NOT NULL,
    actual_type_n integer NOT NULL,
    persisted_type_n integer NOT NULL,
    multi_valued boolean NOT NULL,
    boolean_value boolean,
    long_value bigint,
    float_value real,
    double_value double precision,
    string_value character varying(1024),
    serializable_value bytea,
    qname_id bigint NOT NULL
);



--
-- TOC entry 269 (class 1259 OID 275376)
-- Name: avm_nodes; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE avm_nodes (
    id bigint NOT NULL,
    class_type character varying(20) NOT NULL,
    vers bigint NOT NULL,
    version_id integer NOT NULL,
    guid character varying(36),
    creator character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    lastmodifier character varying(255) NOT NULL,
    createdate bigint NOT NULL,
    moddate bigint NOT NULL,
    accessdate bigint NOT NULL,
    is_root boolean,
    store_new_id bigint,
    acl_id bigint,
    deletedtype integer,
    layer_id bigint,
    indirection character varying(1024),
    indirection_version integer,
    primary_indirection boolean,
    opacity boolean,
    content_url character varying(128),
    mime_type character varying(100),
    encoding character varying(16),
    length bigint
);



--
-- TOC entry 271 (class 1259 OID 275386)
-- Name: avm_store_properties; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE avm_store_properties (
    id bigint NOT NULL,
    avm_store_id bigint,
    qname_id bigint NOT NULL,
    actual_type_n integer NOT NULL,
    persisted_type_n integer NOT NULL,
    multi_valued boolean NOT NULL,
    boolean_value boolean,
    long_value bigint,
    float_value real,
    double_value double precision,
    string_value character varying(1024),
    serializable_value bytea
);



--
-- TOC entry 273 (class 1259 OID 275396)
-- Name: avm_stores; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE avm_stores (
    id bigint NOT NULL,
    vers bigint NOT NULL,
    name character varying(255),
    next_version_id integer NOT NULL,
    current_root_id bigint,
    acl_id bigint
);



--
-- TOC entry 274 (class 1259 OID 275403)
-- Name: avm_version_layered_node_entry; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE avm_version_layered_node_entry (
    version_root_id bigint NOT NULL,
    md5sum character varying(32) NOT NULL,
    path character varying(1024)
);



--
-- TOC entry 276 (class 1259 OID 275413)
-- Name: avm_version_roots; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE avm_version_roots (
    id bigint NOT NULL,
    version_id integer NOT NULL,
    avm_store_id bigint NOT NULL,
    create_date bigint NOT NULL,
    creator character varying(255) NOT NULL,
    root_id bigint NOT NULL,
    tag character varying(255),
    description character varying(1024)
);



--
-- TOC entry 287 (class 1259 OID 275617)
-- Name: jbpm_action; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_action (
    id_ bigint NOT NULL,
    class character(1) NOT NULL,
    name_ character varying(255),
    ispropagationallowed_ boolean,
    actionexpression_ character varying(255),
    isasync_ boolean,
    referencedaction_ bigint,
    actiondelegation_ bigint,
    event_ bigint,
    processdefinition_ bigint,
    timername_ character varying(255),
    duedate_ character varying(255),
    repeat_ character varying(255),
    transitionname_ character varying(255),
    timeraction_ bigint,
    expression_ text,
    eventindex_ integer,
    exceptionhandler_ bigint,
    exceptionhandlerindex_ integer
);



--
-- TOC entry 288 (class 1259 OID 275625)
-- Name: jbpm_bytearray; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_bytearray (
    id_ bigint NOT NULL,
    name_ character varying(255),
    filedefinition_ bigint
);



--
-- TOC entry 289 (class 1259 OID 275630)
-- Name: jbpm_byteblock; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_byteblock (
    processfile_ bigint NOT NULL,
    bytes_ bytea,
    index_ integer NOT NULL
);



--
-- TOC entry 290 (class 1259 OID 275638)
-- Name: jbpm_comment; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_comment (
    id_ bigint NOT NULL,
    version_ integer NOT NULL,
    actorid_ character varying(255),
    time_ timestamp without time zone,
    message_ text,
    token_ bigint,
    taskinstance_ bigint,
    tokenindex_ integer,
    taskinstanceindex_ integer
);



--
-- TOC entry 291 (class 1259 OID 275646)
-- Name: jbpm_decisionconditions; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_decisionconditions (
    decision_ bigint NOT NULL,
    transitionname_ character varying(255),
    expression_ character varying(255),
    index_ integer NOT NULL
);



--
-- TOC entry 292 (class 1259 OID 275654)
-- Name: jbpm_delegation; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_delegation (
    id_ bigint NOT NULL,
    classname_ text,
    configuration_ text,
    configtype_ character varying(255),
    processdefinition_ bigint
);



--
-- TOC entry 293 (class 1259 OID 275662)
-- Name: jbpm_event; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_event (
    id_ bigint NOT NULL,
    eventtype_ character varying(255),
    type_ character(1),
    graphelement_ bigint,
    processdefinition_ bigint,
    node_ bigint,
    transition_ bigint,
    task_ bigint
);



--
-- TOC entry 294 (class 1259 OID 275667)
-- Name: jbpm_exceptionhandler; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_exceptionhandler (
    id_ bigint NOT NULL,
    exceptionclassname_ text,
    type_ character(1),
    graphelement_ bigint,
    processdefinition_ bigint,
    graphelementindex_ integer,
    node_ bigint,
    transition_ bigint,
    task_ bigint
);



--
-- TOC entry 295 (class 1259 OID 275675)
-- Name: jbpm_job; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_job (
    id_ bigint NOT NULL,
    class_ character(1) NOT NULL,
    version_ integer NOT NULL,
    duedate_ timestamp without time zone,
    processinstance_ bigint,
    token_ bigint,
    taskinstance_ bigint,
    issuspended_ boolean,
    isexclusive_ boolean,
    lockowner_ character varying(255),
    locktime_ timestamp without time zone,
    exception_ text,
    retries_ integer,
    name_ character varying(255),
    repeat_ character varying(255),
    transitionname_ character varying(255),
    action_ bigint,
    graphelementtype_ character varying(255),
    graphelement_ bigint,
    node_ bigint
);



--
-- TOC entry 296 (class 1259 OID 275683)
-- Name: jbpm_log; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_log (
    id_ bigint NOT NULL,
    class_ character(1) NOT NULL,
    index_ integer,
    date_ timestamp without time zone,
    token_ bigint,
    parent_ bigint,
    message_ text,
    exception_ text,
    action_ bigint,
    node_ bigint,
    enter_ timestamp without time zone,
    leave_ timestamp without time zone,
    duration_ bigint,
    newlongvalue_ bigint,
    transition_ bigint,
    child_ bigint,
    sourcenode_ bigint,
    destinationnode_ bigint,
    variableinstance_ bigint,
    oldbytearray_ bigint,
    newbytearray_ bigint,
    olddatevalue_ timestamp without time zone,
    newdatevalue_ timestamp without time zone,
    olddoublevalue_ double precision,
    newdoublevalue_ double precision,
    oldlongidclass_ character varying(255),
    oldlongidvalue_ bigint,
    newlongidclass_ character varying(255),
    newlongidvalue_ bigint,
    oldstringidclass_ character varying(255),
    oldstringidvalue_ character varying(255),
    newstringidclass_ character varying(255),
    newstringidvalue_ character varying(255),
    oldlongvalue_ bigint,
    oldstringvalue_ text,
    newstringvalue_ text,
    taskinstance_ bigint,
    taskactorid_ character varying(255),
    taskoldactorid_ character varying(255),
    swimlaneinstance_ bigint
);



--
-- TOC entry 297 (class 1259 OID 275691)
-- Name: jbpm_moduledefinition; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_moduledefinition (
    id_ bigint NOT NULL,
    class_ character(1) NOT NULL,
    name_ character varying(255),
    processdefinition_ bigint,
    starttask_ bigint
);



--
-- TOC entry 298 (class 1259 OID 275696)
-- Name: jbpm_moduleinstance; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_moduleinstance (
    id_ bigint NOT NULL,
    class_ character(1) NOT NULL,
    version_ integer NOT NULL,
    processinstance_ bigint,
    taskmgmtdefinition_ bigint,
    name_ character varying(255)
);



--
-- TOC entry 299 (class 1259 OID 275701)
-- Name: jbpm_node; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_node (
    id_ bigint NOT NULL,
    class_ character(1) NOT NULL,
    name_ character varying(255),
    description_ text,
    processdefinition_ bigint,
    isasync_ boolean,
    isasyncexcl_ boolean,
    action_ bigint,
    superstate_ bigint,
    subprocname_ character varying(255),
    subprocessdefinition_ bigint,
    decisionexpression_ character varying(255),
    decisiondelegation bigint,
    script_ bigint,
    signal_ integer,
    createtasks_ boolean,
    endtasks_ boolean,
    nodecollectionindex_ integer
);



--
-- TOC entry 300 (class 1259 OID 275709)
-- Name: jbpm_pooledactor; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_pooledactor (
    id_ bigint NOT NULL,
    version_ integer NOT NULL,
    actorid_ character varying(255),
    swimlaneinstance_ bigint
);



--
-- TOC entry 301 (class 1259 OID 275714)
-- Name: jbpm_processdefinition; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_processdefinition (
    id_ bigint NOT NULL,
    class_ character(1) NOT NULL,
    name_ character varying(255),
    description_ text,
    version_ integer,
    isterminationimplicit_ boolean,
    startstate_ bigint
);



--
-- TOC entry 302 (class 1259 OID 275722)
-- Name: jbpm_processinstance; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_processinstance (
    id_ bigint NOT NULL,
    version_ integer NOT NULL,
    key_ character varying(255),
    start_ timestamp without time zone,
    end_ timestamp without time zone,
    issuspended_ boolean,
    processdefinition_ bigint,
    roottoken_ bigint,
    superprocesstoken_ bigint
);



--
-- TOC entry 303 (class 1259 OID 275727)
-- Name: jbpm_runtimeaction; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_runtimeaction (
    id_ bigint NOT NULL,
    version_ integer NOT NULL,
    eventtype_ character varying(255),
    type_ character(1),
    graphelement_ bigint,
    processinstance_ bigint,
    action_ bigint,
    processinstanceindex_ integer
);



--
-- TOC entry 304 (class 1259 OID 275732)
-- Name: jbpm_swimlane; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_swimlane (
    id_ bigint NOT NULL,
    name_ character varying(255),
    actoridexpression_ character varying(255),
    pooledactorsexpression_ character varying(255),
    assignmentdelegation_ bigint,
    taskmgmtdefinition_ bigint
);



--
-- TOC entry 305 (class 1259 OID 275740)
-- Name: jbpm_swimlaneinstance; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_swimlaneinstance (
    id_ bigint NOT NULL,
    version_ integer NOT NULL,
    name_ character varying(255),
    actorid_ character varying(255),
    swimlane_ bigint,
    taskmgmtinstance_ bigint
);



--
-- TOC entry 306 (class 1259 OID 275748)
-- Name: jbpm_task; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_task (
    id_ bigint NOT NULL,
    name_ character varying(255),
    description_ text,
    processdefinition_ bigint,
    isblocking_ boolean,
    issignalling_ boolean,
    condition_ character varying(255),
    duedate_ character varying(255),
    priority_ integer,
    actoridexpression_ character varying(255),
    pooledactorsexpression_ character varying(255),
    taskmgmtdefinition_ bigint,
    tasknode_ bigint,
    startstate_ bigint,
    assignmentdelegation_ bigint,
    swimlane_ bigint,
    taskcontroller_ bigint
);



--
-- TOC entry 307 (class 1259 OID 275756)
-- Name: jbpm_taskactorpool; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_taskactorpool (
    taskinstance_ bigint NOT NULL,
    pooledactor_ bigint NOT NULL
);



--
-- TOC entry 308 (class 1259 OID 275761)
-- Name: jbpm_taskcontroller; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_taskcontroller (
    id_ bigint NOT NULL,
    taskcontrollerdelegation_ bigint
);



--
-- TOC entry 309 (class 1259 OID 275766)
-- Name: jbpm_taskinstance; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_taskinstance (
    id_ bigint NOT NULL,
    class_ character(1) NOT NULL,
    version_ integer NOT NULL,
    name_ character varying(255),
    description_ text,
    actorid_ character varying(255),
    create_ timestamp without time zone,
    start_ timestamp without time zone,
    end_ timestamp without time zone,
    duedate_ timestamp without time zone,
    priority_ integer,
    iscancelled_ boolean,
    issuspended_ boolean,
    isopen_ boolean,
    issignalling_ boolean,
    isblocking_ boolean,
    task_ bigint,
    token_ bigint,
    procinst_ bigint,
    swimlaninstance_ bigint,
    taskmgmtinstance_ bigint,
    jbpm_engine_name character varying(50)
);



--
-- TOC entry 310 (class 1259 OID 275774)
-- Name: jbpm_token; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_token (
    id_ bigint NOT NULL,
    version_ integer NOT NULL,
    name_ character varying(255),
    start_ timestamp without time zone,
    end_ timestamp without time zone,
    nodeenter_ timestamp without time zone,
    nextlogindex_ integer,
    isabletoreactivateparent_ boolean,
    isterminationimplicit_ boolean,
    issuspended_ boolean,
    lock_ character varying(255),
    node_ bigint,
    processinstance_ bigint,
    parent_ bigint,
    subprocessinstance_ bigint
);



--
-- TOC entry 311 (class 1259 OID 275782)
-- Name: jbpm_tokenvariablemap; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_tokenvariablemap (
    id_ bigint NOT NULL,
    version_ integer NOT NULL,
    token_ bigint,
    contextinstance_ bigint
);



--
-- TOC entry 312 (class 1259 OID 275787)
-- Name: jbpm_transition; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_transition (
    id_ bigint NOT NULL,
    name_ character varying(255),
    description_ text,
    processdefinition_ bigint,
    from_ bigint,
    to_ bigint,
    condition_ character varying(255),
    fromindex_ integer
);



--
-- TOC entry 313 (class 1259 OID 275795)
-- Name: jbpm_variableaccess; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_variableaccess (
    id_ bigint NOT NULL,
    variablename_ character varying(255),
    access_ character varying(255),
    mappedname_ character varying(255),
    processstate_ bigint,
    taskcontroller_ bigint,
    index_ integer,
    script_ bigint
);



--
-- TOC entry 314 (class 1259 OID 275803)
-- Name: jbpm_variableinstance; Type: TABLE; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE TABLE jbpm_variableinstance (
    id_ bigint NOT NULL,
    class_ character(1) NOT NULL,
    version_ integer NOT NULL,
    name_ character varying(255),
    converter_ character(1),
    token_ bigint,
    tokenvariablemap_ bigint,
    processinstance_ bigint,
    bytearrayvalue_ bigint,
    datevalue_ timestamp without time zone,
    doublevalue_ double precision,
    longidclass_ character varying(255),
    longvalue_ bigint,
    stringidclass_ character varying(255),
    stringvalue_ character varying(255),
    taskinstance_ bigint
);


commit;
