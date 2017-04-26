
begin transaction;

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;


-- TOC entry 2424 (class 2606 OID 274473)
-- Name: act_ge_bytearray_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_ge_bytearray
    ADD CONSTRAINT act_ge_bytearray_pkey PRIMARY KEY (id_);


--
-- TOC entry 2422 (class 2606 OID 274465)
-- Name: act_ge_property_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_ge_property
    ADD CONSTRAINT act_ge_property_pkey PRIMARY KEY (name_);


--
-- TOC entry 2474 (class 2606 OID 274648)
-- Name: act_hi_actinst_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_hi_actinst
    ADD CONSTRAINT act_hi_actinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2490 (class 2606 OID 274680)
-- Name: act_hi_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_hi_attachment
    ADD CONSTRAINT act_hi_attachment_pkey PRIMARY KEY (id_);


--
-- TOC entry 2488 (class 2606 OID 274672)
-- Name: act_hi_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_hi_comment
    ADD CONSTRAINT act_hi_comment_pkey PRIMARY KEY (id_);


--
-- TOC entry 2481 (class 2606 OID 274664)
-- Name: act_hi_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_hi_detail
    ADD CONSTRAINT act_hi_detail_pkey PRIMARY KEY (id_);


--
-- TOC entry 2466 (class 2606 OID 274636)
-- Name: act_hi_procinst_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_hi_procinst
    ADD CONSTRAINT act_hi_procinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2468 (class 2606 OID 274640)
-- Name: act_hi_procinst_proc_def_id__business_key__key; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_hi_procinst
    ADD CONSTRAINT act_hi_procinst_proc_def_id__business_key__key UNIQUE (proc_def_id_, business_key_);


--
-- TOC entry 2470 (class 2606 OID 274638)
-- Name: act_hi_procinst_proc_inst_id__key; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_hi_procinst
    ADD CONSTRAINT act_hi_procinst_proc_inst_id__key UNIQUE (proc_inst_id_);


--
-- TOC entry 2479 (class 2606 OID 274656)
-- Name: act_hi_taskinst_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_hi_taskinst
    ADD CONSTRAINT act_hi_taskinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2492 (class 2606 OID 274698)
-- Name: act_id_group_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_id_group
    ADD CONSTRAINT act_id_group_pkey PRIMARY KEY (id_);


--
-- TOC entry 2500 (class 2606 OID 274719)
-- Name: act_id_info_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_id_info
    ADD CONSTRAINT act_id_info_pkey PRIMARY KEY (id_);


--
-- TOC entry 2494 (class 2606 OID 274703)
-- Name: act_id_membership_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_id_membership
    ADD CONSTRAINT act_id_membership_pkey PRIMARY KEY (user_id_, group_id_);


--
-- TOC entry 2498 (class 2606 OID 274711)
-- Name: act_id_user_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_id_user
    ADD CONSTRAINT act_id_user_pkey PRIMARY KEY (id_);


--
-- TOC entry 2427 (class 2606 OID 274478)
-- Name: act_re_deployment_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_re_deployment
    ADD CONSTRAINT act_re_deployment_pkey PRIMARY KEY (id_);


--
-- TOC entry 2440 (class 2606 OID 274504)
-- Name: act_re_procdef_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_re_procdef
    ADD CONSTRAINT act_re_procdef_pkey PRIMARY KEY (id_);


--
-- TOC entry 2464 (class 2606 OID 274536)
-- Name: act_ru_event_subscr_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_ru_event_subscr
    ADD CONSTRAINT act_ru_event_subscr_pkey PRIMARY KEY (id_);


--
-- TOC entry 2433 (class 2606 OID 274486)
-- Name: act_ru_execution_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_ru_execution_pkey PRIMARY KEY (id_);


--
-- TOC entry 2435 (class 2606 OID 274488)
-- Name: act_ru_execution_proc_def_id__business_key__key; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_ru_execution_proc_def_id__business_key__key UNIQUE (proc_def_id_, business_key_);


--
-- TOC entry 2454 (class 2606 OID 274520)
-- Name: act_ru_identitylink_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_ru_identitylink_pkey PRIMARY KEY (id_);


--
-- TOC entry 2438 (class 2606 OID 274496)
-- Name: act_ru_job_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_ru_job
    ADD CONSTRAINT act_ru_job_pkey PRIMARY KEY (id_);


--
-- TOC entry 2448 (class 2606 OID 274512)
-- Name: act_ru_task_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_ru_task_pkey PRIMARY KEY (id_);


--
-- TOC entry 2460 (class 2606 OID 274528)
-- Name: act_ru_variable_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_ru_variable_pkey PRIMARY KEY (id_);


--
-- TOC entry 2442 (class 2606 OID 274550)
-- Name: act_uniq_procdef; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY act_re_procdef
    ADD CONSTRAINT act_uniq_procdef UNIQUE (key_, version_);


--
-- TOC entry 2524 (class 2606 OID 274812)
-- Name: alf_access_control_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_access_control_entry
    ADD CONSTRAINT alf_access_control_entry_pkey PRIMARY KEY (id);


--
-- TOC entry 2534 (class 2606 OID 274846)
-- Name: alf_access_control_list_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_access_control_list
    ADD CONSTRAINT alf_access_control_list_pkey PRIMARY KEY (id);


--
-- TOC entry 2518 (class 2606 OID 274796)
-- Name: alf_ace_context_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_ace_context
    ADD CONSTRAINT alf_ace_context_pkey PRIMARY KEY (id);


--
-- TOC entry 2530 (class 2606 OID 274838)
-- Name: alf_acl_change_set_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_acl_change_set
    ADD CONSTRAINT alf_acl_change_set_pkey PRIMARY KEY (id);


--
-- TOC entry 2539 (class 2606 OID 274861)
-- Name: alf_acl_member_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_acl_member
    ADD CONSTRAINT alf_acl_member_pkey PRIMARY KEY (id);


--
-- TOC entry 2720 (class 2606 OID 275566)
-- Name: alf_activity_feed_control_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_activity_feed_control
    ADD CONSTRAINT alf_activity_feed_control_pkey PRIMARY KEY (id);


--
-- TOC entry 2713 (class 2606 OID 275551)
-- Name: alf_activity_feed_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_activity_feed
    ADD CONSTRAINT alf_activity_feed_pkey PRIMARY KEY (id);


--
-- TOC entry 2723 (class 2606 OID 275577)
-- Name: alf_activity_post_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_activity_post
    ADD CONSTRAINT alf_activity_post_pkey PRIMARY KEY (sequence_id);


--
-- TOC entry 2502 (class 2606 OID 274742)
-- Name: alf_applied_patch_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_applied_patch
    ADD CONSTRAINT alf_applied_patch_pkey PRIMARY KEY (id);


--
-- TOC entry 2653 (class 2606 OID 275300)
-- Name: alf_audit_app_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_audit_app
    ADD CONSTRAINT alf_audit_app_pkey PRIMARY KEY (id);


--
-- TOC entry 2659 (class 2606 OID 275326)
-- Name: alf_audit_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_audit_entry
    ADD CONSTRAINT alf_audit_entry_pkey PRIMARY KEY (id);


--
-- TOC entry 2649 (class 2606 OID 275286)
-- Name: alf_audit_model_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_audit_model
    ADD CONSTRAINT alf_audit_model_pkey PRIMARY KEY (id);


--
-- TOC entry 2543 (class 2606 OID 274881)
-- Name: alf_authority_alias_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_authority_alias
    ADD CONSTRAINT alf_authority_alias_pkey PRIMARY KEY (id);


--
-- TOC entry 2520 (class 2606 OID 274803)
-- Name: alf_authority_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_authority
    ADD CONSTRAINT alf_authority_pkey PRIMARY KEY (id);


--
-- TOC entry 2567 (class 2606 OID 274978)
-- Name: alf_child_assoc_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_child_assoc
    ADD CONSTRAINT alf_child_assoc_pkey PRIMARY KEY (id);


--
-- TOC entry 2610 (class 2606 OID 275140)
-- Name: alf_content_data_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_content_data
    ADD CONSTRAINT alf_content_data_pkey PRIMARY KEY (id);


--
-- TOC entry 2606 (class 2606 OID 275131)
-- Name: alf_content_url_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_content_url
    ADD CONSTRAINT alf_content_url_pkey PRIMARY KEY (id);


--
-- TOC entry 2602 (class 2606 OID 275124)
-- Name: alf_encoding_encoding_str_key; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_encoding
    ADD CONSTRAINT alf_encoding_encoding_str_key UNIQUE (encoding_str);


--
-- TOC entry 2604 (class 2606 OID 275122)
-- Name: alf_encoding_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_encoding
    ADD CONSTRAINT alf_encoding_pkey PRIMARY KEY (id);


--
-- TOC entry 2504 (class 2606 OID 274749)
-- Name: alf_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_locale
    ADD CONSTRAINT alf_locale_pkey PRIMARY KEY (id);


--
-- TOC entry 2594 (class 2606 OID 275094)
-- Name: alf_lock_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_lock
    ADD CONSTRAINT alf_lock_pkey PRIMARY KEY (id);


--
-- TOC entry 2591 (class 2606 OID 275081)
-- Name: alf_lock_resource_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_lock_resource
    ADD CONSTRAINT alf_lock_resource_pkey PRIMARY KEY (id);


--
-- TOC entry 2598 (class 2606 OID 275115)
-- Name: alf_mimetype_mimetype_str_key; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_mimetype
    ADD CONSTRAINT alf_mimetype_mimetype_str_key UNIQUE (mimetype_str);


--
-- TOC entry 2600 (class 2606 OID 275113)
-- Name: alf_mimetype_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_mimetype
    ADD CONSTRAINT alf_mimetype_pkey PRIMARY KEY (id);


--
-- TOC entry 2507 (class 2606 OID 274757)
-- Name: alf_namespace_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_namespace
    ADD CONSTRAINT alf_namespace_pkey PRIMARY KEY (id);


--
-- TOC entry 2576 (class 2606 OID 275010)
-- Name: alf_node_aspects_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_node_aspects
    ADD CONSTRAINT alf_node_aspects_pkey PRIMARY KEY (node_id, qname_id);


--
-- TOC entry 2580 (class 2606 OID 275029)
-- Name: alf_node_assoc_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_node_assoc
    ADD CONSTRAINT alf_node_assoc_pkey PRIMARY KEY (id);


--
-- TOC entry 2559 (class 2606 OID 274934)
-- Name: alf_node_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_node
    ADD CONSTRAINT alf_node_pkey PRIMARY KEY (id);


--
-- TOC entry 2586 (class 2606 OID 275056)
-- Name: alf_node_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_node_properties
    ADD CONSTRAINT alf_node_properties_pkey PRIMARY KEY (node_id, qname_id, list_index, locale_id);


--
-- TOC entry 2514 (class 2606 OID 274779)
-- Name: alf_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_permission
    ADD CONSTRAINT alf_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2616 (class 2606 OID 275171)
-- Name: alf_prop_class_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_prop_class
    ADD CONSTRAINT alf_prop_class_pkey PRIMARY KEY (id);


--
-- TOC entry 2620 (class 2606 OID 275178)
-- Name: alf_prop_date_value_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_prop_date_value
    ADD CONSTRAINT alf_prop_date_value_pkey PRIMARY KEY (date_value);


--
-- TOC entry 2623 (class 2606 OID 275186)
-- Name: alf_prop_double_value_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_prop_double_value
    ADD CONSTRAINT alf_prop_double_value_pkey PRIMARY KEY (id);


--
-- TOC entry 2638 (class 2606 OID 275230)
-- Name: alf_prop_link_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_prop_link
    ADD CONSTRAINT alf_prop_link_pkey PRIMARY KEY (root_prop_id, contained_in, prop_index);


--
-- TOC entry 2636 (class 2606 OID 275225)
-- Name: alf_prop_root_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_prop_root
    ADD CONSTRAINT alf_prop_root_pkey PRIMARY KEY (id);


--
-- TOC entry 2630 (class 2606 OID 275209)
-- Name: alf_prop_serializable_value_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_prop_serializable_value
    ADD CONSTRAINT alf_prop_serializable_value_pkey PRIMARY KEY (id);


--
-- TOC entry 2626 (class 2606 OID 275197)
-- Name: alf_prop_string_value_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_prop_string_value
    ADD CONSTRAINT alf_prop_string_value_pkey PRIMARY KEY (id);


--
-- TOC entry 2643 (class 2606 OID 275255)
-- Name: alf_prop_unique_ctx_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_prop_unique_ctx
    ADD CONSTRAINT alf_prop_unique_ctx_pkey PRIMARY KEY (id);


--
-- TOC entry 2632 (class 2606 OID 275216)
-- Name: alf_prop_value_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_prop_value
    ADD CONSTRAINT alf_prop_value_pkey PRIMARY KEY (id);


--
-- TOC entry 2510 (class 2606 OID 274765)
-- Name: alf_qname_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_qname
    ADD CONSTRAINT alf_qname_pkey PRIMARY KEY (id);


--
-- TOC entry 2548 (class 2606 OID 274901)
-- Name: alf_server_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_server
    ADD CONSTRAINT alf_server_pkey PRIMARY KEY (id);


--
-- TOC entry 2555 (class 2606 OID 274923)
-- Name: alf_store_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_store
    ADD CONSTRAINT alf_store_pkey PRIMARY KEY (id);


--
-- TOC entry 2730 (class 2606 OID 275597)
-- Name: alf_subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_subscriptions
    ADD CONSTRAINT alf_subscriptions_pkey PRIMARY KEY (user_node_id, node_id);


--
-- TOC entry 2733 (class 2606 OID 275616)
-- Name: alf_tenant_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_tenant
    ADD CONSTRAINT alf_tenant_pkey PRIMARY KEY (tenant_domain);


--
-- TOC entry 2551 (class 2606 OID 274909)
-- Name: alf_transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_transaction
    ADD CONSTRAINT alf_transaction_pkey PRIMARY KEY (id);


--
-- TOC entry 2727 (class 2606 OID 275586)
-- Name: alf_usage_delta_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_usage_delta
    ADD CONSTRAINT alf_usage_delta_pkey PRIMARY KEY (id);


--
-- TOC entry 2665 (class 2606 OID 275350)
-- Name: avm_aspects_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY avm_aspects
    ADD CONSTRAINT avm_aspects_pkey PRIMARY KEY (node_id, qname_id);


--
-- TOC entry 2669 (class 2606 OID 275355)
-- Name: avm_child_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY avm_child_entries
    ADD CONSTRAINT avm_child_entries_pkey PRIMARY KEY (parent_id, lc_name);


--
-- TOC entry 2674 (class 2606 OID 275360)
-- Name: avm_history_links_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY avm_history_links
    ADD CONSTRAINT avm_history_links_pkey PRIMARY KEY (ancestor, descendent);


--
-- TOC entry 2679 (class 2606 OID 275365)
-- Name: avm_merge_links_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY avm_merge_links
    ADD CONSTRAINT avm_merge_links_pkey PRIMARY KEY (mfrom, mto);


--
-- TOC entry 2683 (class 2606 OID 275373)
-- Name: avm_node_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY avm_node_properties
    ADD CONSTRAINT avm_node_properties_pkey PRIMARY KEY (node_id, qname_id);


--
-- TOC entry 2687 (class 2606 OID 275383)
-- Name: avm_nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY avm_nodes
    ADD CONSTRAINT avm_nodes_pkey PRIMARY KEY (id);


--
-- TOC entry 2692 (class 2606 OID 275393)
-- Name: avm_store_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY avm_store_properties
    ADD CONSTRAINT avm_store_properties_pkey PRIMARY KEY (id);


--
-- TOC entry 2696 (class 2606 OID 275402)
-- Name: avm_stores_name_key; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY avm_stores
    ADD CONSTRAINT avm_stores_name_key UNIQUE (name);


--
-- TOC entry 2698 (class 2606 OID 275400)
-- Name: avm_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY avm_stores
    ADD CONSTRAINT avm_stores_pkey PRIMARY KEY (id);


--
-- TOC entry 2702 (class 2606 OID 275410)
-- Name: avm_version_layered_node_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY avm_version_layered_node_entry
    ADD CONSTRAINT avm_version_layered_node_entry_pkey PRIMARY KEY (version_root_id, md5sum);


--
-- TOC entry 2705 (class 2606 OID 275420)
-- Name: avm_version_roots_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY avm_version_roots
    ADD CONSTRAINT avm_version_roots_pkey PRIMARY KEY (id);


--
-- TOC entry 2707 (class 2606 OID 275422)
-- Name: avm_version_roots_version_id_avm_store_id_key; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY avm_version_roots
    ADD CONSTRAINT avm_version_roots_version_id_avm_store_id_key UNIQUE (version_id, avm_store_id);


--
-- TOC entry 2657 (class 2606 OID 275302)
-- Name: idx_alf_aud_app_an; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY alf_audit_app
    ADD CONSTRAINT idx_alf_aud_app_an UNIQUE (app_name_id);


--
-- TOC entry 2741 (class 2606 OID 275624)
-- Name: jbpm_action_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_action
    ADD CONSTRAINT jbpm_action_pkey PRIMARY KEY (id_);


--
-- TOC entry 2744 (class 2606 OID 275629)
-- Name: jbpm_bytearray_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_bytearray
    ADD CONSTRAINT jbpm_bytearray_pkey PRIMARY KEY (id_);


--
-- TOC entry 2747 (class 2606 OID 275637)
-- Name: jbpm_byteblock_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_byteblock
    ADD CONSTRAINT jbpm_byteblock_pkey PRIMARY KEY (processfile_, index_);


--
-- TOC entry 2751 (class 2606 OID 275645)
-- Name: jbpm_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_comment
    ADD CONSTRAINT jbpm_comment_pkey PRIMARY KEY (id_);


--
-- TOC entry 2754 (class 2606 OID 275653)
-- Name: jbpm_decisionconditions_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_decisionconditions
    ADD CONSTRAINT jbpm_decisionconditions_pkey PRIMARY KEY (decision_, index_);


--
-- TOC entry 2757 (class 2606 OID 275661)
-- Name: jbpm_delegation_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_delegation
    ADD CONSTRAINT jbpm_delegation_pkey PRIMARY KEY (id_);


--
-- TOC entry 2763 (class 2606 OID 275666)
-- Name: jbpm_event_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_event
    ADD CONSTRAINT jbpm_event_pkey PRIMARY KEY (id_);


--
-- TOC entry 2765 (class 2606 OID 275674)
-- Name: jbpm_exceptionhandler_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_exceptionhandler
    ADD CONSTRAINT jbpm_exceptionhandler_pkey PRIMARY KEY (id_);


--
-- TOC entry 2772 (class 2606 OID 275682)
-- Name: jbpm_job_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_job
    ADD CONSTRAINT jbpm_job_pkey PRIMARY KEY (id_);


--
-- TOC entry 2787 (class 2606 OID 275690)
-- Name: jbpm_log_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_log
    ADD CONSTRAINT jbpm_log_pkey PRIMARY KEY (id_);


--
-- TOC entry 2791 (class 2606 OID 275695)
-- Name: jbpm_moduledefinition_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_moduledefinition
    ADD CONSTRAINT jbpm_moduledefinition_pkey PRIMARY KEY (id_);


--
-- TOC entry 2795 (class 2606 OID 275700)
-- Name: jbpm_moduleinstance_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_moduleinstance
    ADD CONSTRAINT jbpm_moduleinstance_pkey PRIMARY KEY (id_);


--
-- TOC entry 2803 (class 2606 OID 275708)
-- Name: jbpm_node_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_node
    ADD CONSTRAINT jbpm_node_pkey PRIMARY KEY (id_);


--
-- TOC entry 2806 (class 2606 OID 275713)
-- Name: jbpm_pooledactor_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_pooledactor
    ADD CONSTRAINT jbpm_pooledactor_pkey PRIMARY KEY (id_);


--
-- TOC entry 2809 (class 2606 OID 275721)
-- Name: jbpm_processdefinition_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_processdefinition
    ADD CONSTRAINT jbpm_processdefinition_pkey PRIMARY KEY (id_);


--
-- TOC entry 2814 (class 2606 OID 275726)
-- Name: jbpm_processinstance_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_processinstance
    ADD CONSTRAINT jbpm_processinstance_pkey PRIMARY KEY (id_);


--
-- TOC entry 2818 (class 2606 OID 275731)
-- Name: jbpm_runtimeaction_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_runtimeaction
    ADD CONSTRAINT jbpm_runtimeaction_pkey PRIMARY KEY (id_);


--
-- TOC entry 2822 (class 2606 OID 275739)
-- Name: jbpm_swimlane_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_swimlane
    ADD CONSTRAINT jbpm_swimlane_pkey PRIMARY KEY (id_);


--
-- TOC entry 2826 (class 2606 OID 275747)
-- Name: jbpm_swimlaneinstance_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_swimlaneinstance
    ADD CONSTRAINT jbpm_swimlaneinstance_pkey PRIMARY KEY (id_);


--
-- TOC entry 2835 (class 2606 OID 275755)
-- Name: jbpm_task_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_task
    ADD CONSTRAINT jbpm_task_pkey PRIMARY KEY (id_);


--
-- TOC entry 2839 (class 2606 OID 275760)
-- Name: jbpm_taskactorpool_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_taskactorpool
    ADD CONSTRAINT jbpm_taskactorpool_pkey PRIMARY KEY (taskinstance_, pooledactor_);


--
-- TOC entry 2842 (class 2606 OID 275765)
-- Name: jbpm_taskcontroller_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_taskcontroller
    ADD CONSTRAINT jbpm_taskcontroller_pkey PRIMARY KEY (id_);


--
-- TOC entry 2849 (class 2606 OID 275773)
-- Name: jbpm_taskinstance_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_taskinstance
    ADD CONSTRAINT jbpm_taskinstance_pkey PRIMARY KEY (id_);


--
-- TOC entry 2855 (class 2606 OID 275781)
-- Name: jbpm_token_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_token
    ADD CONSTRAINT jbpm_token_pkey PRIMARY KEY (id_);


--
-- TOC entry 2859 (class 2606 OID 275786)
-- Name: jbpm_tokenvariablemap_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_tokenvariablemap
    ADD CONSTRAINT jbpm_tokenvariablemap_pkey PRIMARY KEY (id_);


--
-- TOC entry 2864 (class 2606 OID 275794)
-- Name: jbpm_transition_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_transition
    ADD CONSTRAINT jbpm_transition_pkey PRIMARY KEY (id_);


--
-- TOC entry 2869 (class 2606 OID 275802)
-- Name: jbpm_variableaccess_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_variableaccess
    ADD CONSTRAINT jbpm_variableaccess_pkey PRIMARY KEY (id_);


--
-- TOC entry 2877 (class 2606 OID 275810)
-- Name: jbpm_variableinstance_pkey; Type: CONSTRAINT; Schema: public; Owner: bne_local; Tablespace: 
--

ALTER TABLE ONLY jbpm_variableinstance
    ADD CONSTRAINT jbpm_variableinstance_pkey PRIMARY KEY (id_);


--
-- TOC entry 2532 (class 1259 OID 274852)
-- Name: acl_id; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX acl_id ON alf_access_control_list USING btree (acl_id, latest, acl_version);


--
-- TOC entry 2537 (class 1259 OID 274872)
-- Name: aclm_acl_id; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX aclm_acl_id ON alf_acl_member USING btree (acl_id, ace_id, pos);


--
-- TOC entry 2449 (class 1259 OID 274575)
-- Name: act_idx_athrz_procedef; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_athrz_procedef ON act_ru_identitylink USING btree (proc_def_id_);


--
-- TOC entry 2425 (class 1259 OID 274543)
-- Name: act_idx_bytear_depl; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_bytear_depl ON act_ge_bytearray USING btree (deployment_id_);


--
-- TOC entry 2461 (class 1259 OID 274623)
-- Name: act_idx_event_subscr; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_event_subscr ON act_ru_event_subscr USING btree (execution_id_);


--
-- TOC entry 2462 (class 1259 OID 274541)
-- Name: act_idx_event_subscr_config_; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_event_subscr_config_ ON act_ru_event_subscr USING btree (configuration_);


--
-- TOC entry 2428 (class 1259 OID 274557)
-- Name: act_idx_exe_parent; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_exe_parent ON act_ru_execution USING btree (parent_id_);


--
-- TOC entry 2429 (class 1259 OID 274551)
-- Name: act_idx_exe_procinst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_exe_procinst ON act_ru_execution USING btree (proc_inst_id_);


--
-- TOC entry 2430 (class 1259 OID 274563)
-- Name: act_idx_exe_super; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_exe_super ON act_ru_execution USING btree (super_exec_);


--
-- TOC entry 2431 (class 1259 OID 274537)
-- Name: act_idx_exec_buskey; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_exec_buskey ON act_ru_execution USING btree (business_key_);


--
-- TOC entry 2475 (class 1259 OID 274684)
-- Name: act_idx_hi_act_inst_end; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_hi_act_inst_end ON act_hi_actinst USING btree (end_time_);


--
-- TOC entry 2476 (class 1259 OID 274690)
-- Name: act_idx_hi_act_inst_procinst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_hi_act_inst_procinst ON act_hi_actinst USING btree (proc_inst_id_, act_id_);


--
-- TOC entry 2477 (class 1259 OID 274683)
-- Name: act_idx_hi_act_inst_start; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_hi_act_inst_start ON act_hi_actinst USING btree (start_time_);


--
-- TOC entry 2482 (class 1259 OID 274686)
-- Name: act_idx_hi_detail_act_inst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_hi_detail_act_inst ON act_hi_detail USING btree (act_inst_id_);


--
-- TOC entry 2483 (class 1259 OID 274688)
-- Name: act_idx_hi_detail_name; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_hi_detail_name ON act_hi_detail USING btree (name_);


--
-- TOC entry 2484 (class 1259 OID 274685)
-- Name: act_idx_hi_detail_proc_inst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_hi_detail_proc_inst ON act_hi_detail USING btree (proc_inst_id_);


--
-- TOC entry 2485 (class 1259 OID 274689)
-- Name: act_idx_hi_detail_task_id; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_hi_detail_task_id ON act_hi_detail USING btree (task_id_);


--
-- TOC entry 2486 (class 1259 OID 274687)
-- Name: act_idx_hi_detail_time; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_hi_detail_time ON act_hi_detail USING btree (time_);


--
-- TOC entry 2471 (class 1259 OID 274682)
-- Name: act_idx_hi_pro_i_buskey; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_hi_pro_i_buskey ON act_hi_procinst USING btree (business_key_);


--
-- TOC entry 2472 (class 1259 OID 274681)
-- Name: act_idx_hi_pro_inst_end; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_hi_pro_inst_end ON act_hi_procinst USING btree (end_time_);


--
-- TOC entry 2450 (class 1259 OID 274540)
-- Name: act_idx_ident_lnk_group; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_ident_lnk_group ON act_ru_identitylink USING btree (group_id_);


--
-- TOC entry 2451 (class 1259 OID 274539)
-- Name: act_idx_ident_lnk_user; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_ident_lnk_user ON act_ru_identitylink USING btree (user_id_);


--
-- TOC entry 2436 (class 1259 OID 274617)
-- Name: act_idx_job_exception; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_job_exception ON act_ru_job USING btree (exception_stack_id_);


--
-- TOC entry 2495 (class 1259 OID 274720)
-- Name: act_idx_memb_group; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_memb_group ON act_id_membership USING btree (group_id_);


--
-- TOC entry 2496 (class 1259 OID 274726)
-- Name: act_idx_memb_user; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_memb_user ON act_id_membership USING btree (user_id_);


--
-- TOC entry 2443 (class 1259 OID 274538)
-- Name: act_idx_task_create; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_task_create ON act_ru_task USING btree (create_time_);


--
-- TOC entry 2444 (class 1259 OID 274581)
-- Name: act_idx_task_exec; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_task_exec ON act_ru_task USING btree (execution_id_);


--
-- TOC entry 2445 (class 1259 OID 274593)
-- Name: act_idx_task_procdef; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_task_procdef ON act_ru_task USING btree (proc_def_id_);


--
-- TOC entry 2446 (class 1259 OID 274587)
-- Name: act_idx_task_procinst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_task_procinst ON act_ru_task USING btree (proc_inst_id_);


--
-- TOC entry 2452 (class 1259 OID 274569)
-- Name: act_idx_tskass_task; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_tskass_task ON act_ru_identitylink USING btree (task_id_);


--
-- TOC entry 2455 (class 1259 OID 274611)
-- Name: act_idx_var_bytearray; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_var_bytearray ON act_ru_variable USING btree (bytearray_id_);


--
-- TOC entry 2456 (class 1259 OID 274599)
-- Name: act_idx_var_exe; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_var_exe ON act_ru_variable USING btree (execution_id_);


--
-- TOC entry 2457 (class 1259 OID 274605)
-- Name: act_idx_var_procinst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_var_procinst ON act_ru_variable USING btree (proc_inst_id_);


--
-- TOC entry 2458 (class 1259 OID 274542)
-- Name: act_idx_variable_task_id; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX act_idx_variable_task_id ON act_ru_variable USING btree (task_id_);


--
-- TOC entry 2544 (class 1259 OID 274892)
-- Name: auth_id; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX auth_id ON alf_authority_alias USING btree (auth_id, alias_id);


--
-- TOC entry 2521 (class 1259 OID 274804)
-- Name: authority; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX authority ON alf_authority USING btree (authority, crc);


--
-- TOC entry 2714 (class 1259 OID 275556)
-- Name: feed_activityformat_idx; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX feed_activityformat_idx ON alf_activity_feed USING btree (activity_format);


--
-- TOC entry 2715 (class 1259 OID 275554)
-- Name: feed_feeduserid_idx; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX feed_feeduserid_idx ON alf_activity_feed USING btree (feed_user_id);


--
-- TOC entry 2716 (class 1259 OID 275552)
-- Name: feed_postdate_idx; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX feed_postdate_idx ON alf_activity_feed USING btree (post_date);


--
-- TOC entry 2717 (class 1259 OID 275553)
-- Name: feed_postuserid_idx; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX feed_postuserid_idx ON alf_activity_feed USING btree (post_user_id);


--
-- TOC entry 2718 (class 1259 OID 275555)
-- Name: feed_sitenetwork_idx; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX feed_sitenetwork_idx ON alf_activity_feed USING btree (site_network);


--
-- TOC entry 2721 (class 1259 OID 275567)
-- Name: feedctrl_feeduserid_idx; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX feedctrl_feeduserid_idx ON alf_activity_feed_control USING btree (feed_user_id);


--
-- TOC entry 2734 (class 1259 OID 276252)
-- Name: fk_action_actndel; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_action_actndel ON jbpm_action USING btree (actiondelegation_);


--
-- TOC entry 2735 (class 1259 OID 276251)
-- Name: fk_action_event; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_action_event ON jbpm_action USING btree (event_);


--
-- TOC entry 2736 (class 1259 OID 276253)
-- Name: fk_action_expthdl; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_action_expthdl ON jbpm_action USING btree (exceptionhandler_);


--
-- TOC entry 2737 (class 1259 OID 276250)
-- Name: fk_action_procdef; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_action_procdef ON jbpm_action USING btree (processdefinition_);


--
-- TOC entry 2738 (class 1259 OID 276248)
-- Name: fk_action_refact; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_action_refact ON jbpm_action USING btree (referencedaction_);


--
-- TOC entry 2525 (class 1259 OID 274831)
-- Name: fk_alf_ace_auth; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_ace_auth ON alf_access_control_entry USING btree (authority_id);


--
-- TOC entry 2526 (class 1259 OID 274829)
-- Name: fk_alf_ace_ctx; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_ace_ctx ON alf_access_control_entry USING btree (context_id);


--
-- TOC entry 2527 (class 1259 OID 274830)
-- Name: fk_alf_ace_perm; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_ace_perm ON alf_access_control_entry USING btree (permission_id);


--
-- TOC entry 2535 (class 1259 OID 274854)
-- Name: fk_alf_acl_acs; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_acl_acs ON alf_access_control_list USING btree (acl_change_set);


--
-- TOC entry 2540 (class 1259 OID 274874)
-- Name: fk_alf_aclm_ace; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_aclm_ace ON alf_acl_member USING btree (ace_id);


--
-- TOC entry 2541 (class 1259 OID 274873)
-- Name: fk_alf_aclm_acl; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_aclm_acl ON alf_acl_member USING btree (acl_id);


--
-- TOC entry 2654 (class 1259 OID 275319)
-- Name: fk_alf_aud_app_dis; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_aud_app_dis ON alf_audit_app USING btree (disabled_paths_id);


--
-- TOC entry 2655 (class 1259 OID 275318)
-- Name: fk_alf_aud_app_mod; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_aud_app_mod ON alf_audit_app USING btree (audit_model_id);


--
-- TOC entry 2660 (class 1259 OID 275343)
-- Name: fk_alf_aud_ent_app; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_aud_ent_app ON alf_audit_entry USING btree (audit_app_id);


--
-- TOC entry 2661 (class 1259 OID 275345)
-- Name: fk_alf_aud_ent_pro; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_aud_ent_pro ON alf_audit_entry USING btree (audit_values_id);


--
-- TOC entry 2662 (class 1259 OID 275344)
-- Name: fk_alf_aud_ent_use; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_aud_ent_use ON alf_audit_entry USING btree (audit_user_id);


--
-- TOC entry 2650 (class 1259 OID 275293)
-- Name: fk_alf_aud_mod_cd; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_aud_mod_cd ON alf_audit_model USING btree (content_data_id);


--
-- TOC entry 2545 (class 1259 OID 274893)
-- Name: fk_alf_autha_ali; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_autha_ali ON alf_authority_alias USING btree (alias_id);


--
-- TOC entry 2546 (class 1259 OID 274894)
-- Name: fk_alf_autha_aut; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_autha_aut ON alf_authority_alias USING btree (auth_id);


--
-- TOC entry 2568 (class 1259 OID 275001)
-- Name: fk_alf_cass_cnode; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_cass_cnode ON alf_child_assoc USING btree (child_node_id);


--
-- TOC entry 2569 (class 1259 OID 275000)
-- Name: fk_alf_cass_pnode; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_cass_pnode ON alf_child_assoc USING btree (parent_node_id);


--
-- TOC entry 2570 (class 1259 OID 275003)
-- Name: fk_alf_cass_qnns; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_cass_qnns ON alf_child_assoc USING btree (qname_ns_id);


--
-- TOC entry 2571 (class 1259 OID 275002)
-- Name: fk_alf_cass_tqn; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_cass_tqn ON alf_child_assoc USING btree (type_qname_id);


--
-- TOC entry 2611 (class 1259 OID 275163)
-- Name: fk_alf_cont_enc; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_cont_enc ON alf_content_data USING btree (content_encoding_id);


--
-- TOC entry 2612 (class 1259 OID 275164)
-- Name: fk_alf_cont_loc; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_cont_loc ON alf_content_data USING btree (content_locale_id);


--
-- TOC entry 2613 (class 1259 OID 275162)
-- Name: fk_alf_cont_mim; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_cont_mim ON alf_content_data USING btree (content_mimetype_id);


--
-- TOC entry 2614 (class 1259 OID 275161)
-- Name: fk_alf_cont_url; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_cont_url ON alf_content_data USING btree (content_url_id);


--
-- TOC entry 2595 (class 1259 OID 275106)
-- Name: fk_alf_lock_excl; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_lock_excl ON alf_lock USING btree (excl_resource_id);


--
-- TOC entry 2577 (class 1259 OID 275021)
-- Name: fk_alf_nasp_n; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_nasp_n ON alf_node_aspects USING btree (node_id);


--
-- TOC entry 2578 (class 1259 OID 275022)
-- Name: fk_alf_nasp_qn; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_nasp_qn ON alf_node_aspects USING btree (qname_id);


--
-- TOC entry 2581 (class 1259 OID 275046)
-- Name: fk_alf_nass_snode; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_nass_snode ON alf_node_assoc USING btree (source_node_id, type_qname_id, assoc_index);


--
-- TOC entry 2582 (class 1259 OID 275047)
-- Name: fk_alf_nass_tnode; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_nass_tnode ON alf_node_assoc USING btree (target_node_id, type_qname_id);


--
-- TOC entry 2583 (class 1259 OID 275048)
-- Name: fk_alf_nass_tqn; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_nass_tqn ON alf_node_assoc USING btree (type_qname_id);


--
-- TOC entry 2560 (class 1259 OID 274962)
-- Name: fk_alf_node_acl; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_node_acl ON alf_node USING btree (acl_id);


--
-- TOC entry 2561 (class 1259 OID 274965)
-- Name: fk_alf_node_loc; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_node_loc ON alf_node USING btree (locale_id);


--
-- TOC entry 2562 (class 1259 OID 274963)
-- Name: fk_alf_node_store; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_node_store ON alf_node USING btree (store_id);


--
-- TOC entry 2563 (class 1259 OID 274964)
-- Name: fk_alf_node_tqn; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_node_tqn ON alf_node USING btree (type_qname_id);


--
-- TOC entry 2587 (class 1259 OID 275074)
-- Name: fk_alf_nprop_loc; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_nprop_loc ON alf_node_properties USING btree (locale_id);


--
-- TOC entry 2588 (class 1259 OID 275072)
-- Name: fk_alf_nprop_n; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_nprop_n ON alf_node_properties USING btree (node_id);


--
-- TOC entry 2589 (class 1259 OID 275073)
-- Name: fk_alf_nprop_qn; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_nprop_qn ON alf_node_properties USING btree (qname_id);


--
-- TOC entry 2515 (class 1259 OID 274786)
-- Name: fk_alf_perm_tqn; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_perm_tqn ON alf_permission USING btree (type_qname_id);


--
-- TOC entry 2639 (class 1259 OID 275247)
-- Name: fk_alf_propln_key; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_propln_key ON alf_prop_link USING btree (key_prop_id);


--
-- TOC entry 2640 (class 1259 OID 275248)
-- Name: fk_alf_propln_val; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_propln_val ON alf_prop_link USING btree (value_prop_id);


--
-- TOC entry 2644 (class 1259 OID 275279)
-- Name: fk_alf_propuctx_p1; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_propuctx_p1 ON alf_prop_unique_ctx USING btree (prop1_id);


--
-- TOC entry 2645 (class 1259 OID 275277)
-- Name: fk_alf_propuctx_v2; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_propuctx_v2 ON alf_prop_unique_ctx USING btree (value2_prop_id);


--
-- TOC entry 2646 (class 1259 OID 275278)
-- Name: fk_alf_propuctx_v3; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_propuctx_v3 ON alf_prop_unique_ctx USING btree (value3_prop_id);


--
-- TOC entry 2511 (class 1259 OID 274772)
-- Name: fk_alf_qname_ns; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_qname_ns ON alf_qname USING btree (ns_id);


--
-- TOC entry 2556 (class 1259 OID 274966)
-- Name: fk_alf_store_root; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_store_root ON alf_store USING btree (root_node_id);


--
-- TOC entry 2731 (class 1259 OID 275608)
-- Name: fk_alf_sub_node; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_sub_node ON alf_subscriptions USING btree (node_id);


--
-- TOC entry 2552 (class 1259 OID 274916)
-- Name: fk_alf_txn_svr; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_txn_svr ON alf_transaction USING btree (server_id);


--
-- TOC entry 2728 (class 1259 OID 275592)
-- Name: fk_alf_usaged_n; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_alf_usaged_n ON alf_usage_delta USING btree (node_id);


--
-- TOC entry 2670 (class 1259 OID 275434)
-- Name: fk_avm_ce_child; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_ce_child ON avm_child_entries USING btree (child_id);


--
-- TOC entry 2671 (class 1259 OID 275440)
-- Name: fk_avm_ce_parent; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_ce_parent ON avm_child_entries USING btree (parent_id);


--
-- TOC entry 2675 (class 1259 OID 275452)
-- Name: fk_avm_hl_ancestor; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_hl_ancestor ON avm_history_links USING btree (ancestor);


--
-- TOC entry 2676 (class 1259 OID 275446)
-- Name: fk_avm_hl_desc; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_hl_desc ON avm_history_links USING btree (descendent);


--
-- TOC entry 2680 (class 1259 OID 275458)
-- Name: fk_avm_ml_from; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_ml_from ON avm_merge_links USING btree (mfrom);


--
-- TOC entry 2681 (class 1259 OID 275464)
-- Name: fk_avm_ml_to; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_ml_to ON avm_merge_links USING btree (mto);


--
-- TOC entry 2688 (class 1259 OID 275477)
-- Name: fk_avm_n_acl; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_n_acl ON avm_nodes USING btree (acl_id);


--
-- TOC entry 2689 (class 1259 OID 275483)
-- Name: fk_avm_n_store; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_n_store ON avm_nodes USING btree (store_new_id);


--
-- TOC entry 2666 (class 1259 OID 275428)
-- Name: fk_avm_nasp_n; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_nasp_n ON avm_aspects USING btree (node_id);


--
-- TOC entry 2667 (class 1259 OID 275521)
-- Name: fk_avm_nasp_qn; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_nasp_qn ON avm_aspects USING btree (qname_id);


--
-- TOC entry 2684 (class 1259 OID 275470)
-- Name: fk_avm_nprop_n; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_nprop_n ON avm_node_properties USING btree (node_id);


--
-- TOC entry 2685 (class 1259 OID 275527)
-- Name: fk_avm_nprop_qn; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_nprop_qn ON avm_node_properties USING btree (qname_id);


--
-- TOC entry 2699 (class 1259 OID 275501)
-- Name: fk_avm_s_acl; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_s_acl ON avm_stores USING btree (acl_id);


--
-- TOC entry 2700 (class 1259 OID 275495)
-- Name: fk_avm_s_root; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_s_root ON avm_stores USING btree (current_root_id);


--
-- TOC entry 2693 (class 1259 OID 275533)
-- Name: fk_avm_sprop_qname; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_sprop_qname ON avm_store_properties USING btree (qname_id);


--
-- TOC entry 2694 (class 1259 OID 275489)
-- Name: fk_avm_sprop_store; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_sprop_store ON avm_store_properties USING btree (avm_store_id);


--
-- TOC entry 2703 (class 1259 OID 275507)
-- Name: fk_avm_vlne_vr; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_vlne_vr ON avm_version_layered_node_entry USING btree (version_root_id);


--
-- TOC entry 2708 (class 1259 OID 275520)
-- Name: fk_avm_vr_root; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_vr_root ON avm_version_roots USING btree (root_id);


--
-- TOC entry 2709 (class 1259 OID 275514)
-- Name: fk_avm_vr_store; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_avm_vr_store ON avm_version_roots USING btree (avm_store_id);


--
-- TOC entry 2742 (class 1259 OID 276254)
-- Name: fk_bytearr_fildef; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_bytearr_fildef ON jbpm_bytearray USING btree (filedefinition_);


--
-- TOC entry 2745 (class 1259 OID 276255)
-- Name: fk_byteblock_file; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_byteblock_file ON jbpm_byteblock USING btree (processfile_);


--
-- TOC entry 2870 (class 1259 OID 276333)
-- Name: fk_byteinst_array; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_byteinst_array ON jbpm_variableinstance USING btree (bytearrayvalue_);


--
-- TOC entry 2748 (class 1259 OID 276256)
-- Name: fk_comment_token; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_comment_token ON jbpm_comment USING btree (token_);


--
-- TOC entry 2749 (class 1259 OID 276257)
-- Name: fk_comment_tsk; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_comment_tsk ON jbpm_comment USING btree (taskinstance_);


--
-- TOC entry 2739 (class 1259 OID 276249)
-- Name: fk_crtetimeract_ta; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_crtetimeract_ta ON jbpm_action USING btree (timeraction_);


--
-- TOC entry 2752 (class 1259 OID 276258)
-- Name: fk_deccond_dec; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_deccond_dec ON jbpm_decisionconditions USING btree (decision_);


--
-- TOC entry 2796 (class 1259 OID 276286)
-- Name: fk_decision_deleg; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_decision_deleg ON jbpm_node USING btree (decisiondelegation);


--
-- TOC entry 2755 (class 1259 OID 276259)
-- Name: fk_delegation_prcd; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_delegation_prcd ON jbpm_delegation USING btree (processdefinition_);


--
-- TOC entry 2758 (class 1259 OID 276262)
-- Name: fk_event_node; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_event_node ON jbpm_event USING btree (node_);


--
-- TOC entry 2759 (class 1259 OID 276260)
-- Name: fk_event_procdef; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_event_procdef ON jbpm_event USING btree (processdefinition_);


--
-- TOC entry 2760 (class 1259 OID 276263)
-- Name: fk_event_task; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_event_task ON jbpm_event USING btree (task_);


--
-- TOC entry 2761 (class 1259 OID 276261)
-- Name: fk_event_trans; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_event_trans ON jbpm_event USING btree (transition_);


--
-- TOC entry 2766 (class 1259 OID 276265)
-- Name: fk_job_action; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_job_action ON jbpm_job USING btree (action_);


--
-- TOC entry 2767 (class 1259 OID 276267)
-- Name: fk_job_node; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_job_node ON jbpm_job USING btree (node_);


--
-- TOC entry 2768 (class 1259 OID 276264)
-- Name: fk_job_prinst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_job_prinst ON jbpm_job USING btree (processinstance_);


--
-- TOC entry 2769 (class 1259 OID 276266)
-- Name: fk_job_token; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_job_token ON jbpm_job USING btree (token_);


--
-- TOC entry 2770 (class 1259 OID 276268)
-- Name: fk_job_tskinst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_job_tskinst ON jbpm_job USING btree (taskinstance_);


--
-- TOC entry 2773 (class 1259 OID 276278)
-- Name: fk_log_action; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_log_action ON jbpm_log USING btree (action_);


--
-- TOC entry 2774 (class 1259 OID 276274)
-- Name: fk_log_childtoken; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_log_childtoken ON jbpm_log USING btree (child_);


--
-- TOC entry 2775 (class 1259 OID 276270)
-- Name: fk_log_destnode; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_log_destnode ON jbpm_log USING btree (destinationnode_);


--
-- TOC entry 2776 (class 1259 OID 276277)
-- Name: fk_log_newbytes; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_log_newbytes ON jbpm_log USING btree (newbytearray_);


--
-- TOC entry 2777 (class 1259 OID 276280)
-- Name: fk_log_node; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_log_node ON jbpm_log USING btree (node_);


--
-- TOC entry 2778 (class 1259 OID 276275)
-- Name: fk_log_oldbytes; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_log_oldbytes ON jbpm_log USING btree (oldbytearray_);


--
-- TOC entry 2779 (class 1259 OID 276281)
-- Name: fk_log_parent; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_log_parent ON jbpm_log USING btree (parent_);


--
-- TOC entry 2780 (class 1259 OID 276269)
-- Name: fk_log_sourcenode; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_log_sourcenode ON jbpm_log USING btree (sourcenode_);


--
-- TOC entry 2781 (class 1259 OID 276276)
-- Name: fk_log_swiminst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_log_swiminst ON jbpm_log USING btree (swimlaneinstance_);


--
-- TOC entry 2782 (class 1259 OID 276273)
-- Name: fk_log_taskinst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_log_taskinst ON jbpm_log USING btree (taskinstance_);


--
-- TOC entry 2783 (class 1259 OID 276271)
-- Name: fk_log_token; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_log_token ON jbpm_log USING btree (token_);


--
-- TOC entry 2784 (class 1259 OID 276272)
-- Name: fk_log_transition; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_log_transition ON jbpm_log USING btree (transition_);


--
-- TOC entry 2785 (class 1259 OID 276279)
-- Name: fk_log_varinst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_log_varinst ON jbpm_log USING btree (variableinstance_);


--
-- TOC entry 2788 (class 1259 OID 276282)
-- Name: fk_moddef_procdef; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_moddef_procdef ON jbpm_moduledefinition USING btree (processdefinition_);


--
-- TOC entry 2792 (class 1259 OID 276284)
-- Name: fk_modinst_prcinst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_modinst_prcinst ON jbpm_moduleinstance USING btree (processinstance_);


--
-- TOC entry 2797 (class 1259 OID 276288)
-- Name: fk_node_action; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_node_action ON jbpm_node USING btree (action_);


--
-- TOC entry 2798 (class 1259 OID 276287)
-- Name: fk_node_procdef; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_node_procdef ON jbpm_node USING btree (processdefinition_);


--
-- TOC entry 2799 (class 1259 OID 276290)
-- Name: fk_node_script; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_node_script ON jbpm_node USING btree (script_);


--
-- TOC entry 2800 (class 1259 OID 276291)
-- Name: fk_node_superstate; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_node_superstate ON jbpm_node USING btree (superstate_);


--
-- TOC entry 2804 (class 1259 OID 276292)
-- Name: fk_pooledactor_sli; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_pooledactor_sli ON jbpm_pooledactor USING btree (swimlaneinstance_);


--
-- TOC entry 2807 (class 1259 OID 276293)
-- Name: fk_procdef_strtsta; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_procdef_strtsta ON jbpm_processdefinition USING btree (startstate_);


--
-- TOC entry 2810 (class 1259 OID 276294)
-- Name: fk_procin_procdef; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_procin_procdef ON jbpm_processinstance USING btree (processdefinition_);


--
-- TOC entry 2811 (class 1259 OID 276295)
-- Name: fk_procin_roottkn; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_procin_roottkn ON jbpm_processinstance USING btree (roottoken_);


--
-- TOC entry 2812 (class 1259 OID 276296)
-- Name: fk_procin_sproctkn; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_procin_sproctkn ON jbpm_processinstance USING btree (superprocesstoken_);


--
-- TOC entry 2801 (class 1259 OID 276289)
-- Name: fk_procst_sbprcdef; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_procst_sbprcdef ON jbpm_node USING btree (subprocessdefinition_);


--
-- TOC entry 2815 (class 1259 OID 276298)
-- Name: fk_rtactn_action; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_rtactn_action ON jbpm_runtimeaction USING btree (action_);


--
-- TOC entry 2816 (class 1259 OID 276297)
-- Name: fk_rtactn_procinst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_rtactn_procinst ON jbpm_runtimeaction USING btree (processinstance_);


--
-- TOC entry 2823 (class 1259 OID 276302)
-- Name: fk_swimlaneinst_sl; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_swimlaneinst_sl ON jbpm_swimlaneinstance USING btree (swimlane_);


--
-- TOC entry 2824 (class 1259 OID 276301)
-- Name: fk_swimlaneinst_tm; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_swimlaneinst_tm ON jbpm_swimlaneinstance USING btree (taskmgmtinstance_);


--
-- TOC entry 2819 (class 1259 OID 276299)
-- Name: fk_swl_assdel; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_swl_assdel ON jbpm_swimlane USING btree (assignmentdelegation_);


--
-- TOC entry 2820 (class 1259 OID 276300)
-- Name: fk_swl_tskmgmtdef; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_swl_tskmgmtdef ON jbpm_swimlane USING btree (taskmgmtdefinition_);


--
-- TOC entry 2827 (class 1259 OID 276305)
-- Name: fk_task_assdel; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_task_assdel ON jbpm_task USING btree (assignmentdelegation_);


--
-- TOC entry 2828 (class 1259 OID 276304)
-- Name: fk_task_procdef; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_task_procdef ON jbpm_task USING btree (processdefinition_);


--
-- TOC entry 2829 (class 1259 OID 276303)
-- Name: fk_task_startst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_task_startst ON jbpm_task USING btree (startstate_);


--
-- TOC entry 2830 (class 1259 OID 276306)
-- Name: fk_task_swimlane; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_task_swimlane ON jbpm_task USING btree (swimlane_);


--
-- TOC entry 2831 (class 1259 OID 276308)
-- Name: fk_task_taskmgtdef; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_task_taskmgtdef ON jbpm_task USING btree (taskmgmtdefinition_);


--
-- TOC entry 2832 (class 1259 OID 276307)
-- Name: fk_task_tasknode; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_task_tasknode ON jbpm_task USING btree (tasknode_);


--
-- TOC entry 2836 (class 1259 OID 276310)
-- Name: fk_taskactpl_tski; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_taskactpl_tski ON jbpm_taskactorpool USING btree (taskinstance_);


--
-- TOC entry 2843 (class 1259 OID 276316)
-- Name: fk_taskinst_slinst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_taskinst_slinst ON jbpm_taskinstance USING btree (swimlaninstance_);


--
-- TOC entry 2844 (class 1259 OID 276317)
-- Name: fk_taskinst_task; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_taskinst_task ON jbpm_taskinstance USING btree (task_);


--
-- TOC entry 2845 (class 1259 OID 276314)
-- Name: fk_taskinst_tminst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_taskinst_tminst ON jbpm_taskinstance USING btree (taskmgmtinstance_);


--
-- TOC entry 2846 (class 1259 OID 276315)
-- Name: fk_taskinst_token; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_taskinst_token ON jbpm_taskinstance USING btree (token_);


--
-- TOC entry 2793 (class 1259 OID 276285)
-- Name: fk_taskmgtinst_tmd; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_taskmgtinst_tmd ON jbpm_moduleinstance USING btree (taskmgmtdefinition_);


--
-- TOC entry 2856 (class 1259 OID 276323)
-- Name: fk_tkvarmap_ctxt; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_tkvarmap_ctxt ON jbpm_tokenvariablemap USING btree (contextinstance_);


--
-- TOC entry 2857 (class 1259 OID 276322)
-- Name: fk_tkvarmap_token; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_tkvarmap_token ON jbpm_tokenvariablemap USING btree (token_);


--
-- TOC entry 2850 (class 1259 OID 276320)
-- Name: fk_token_node; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_token_node ON jbpm_token USING btree (node_);


--
-- TOC entry 2851 (class 1259 OID 276321)
-- Name: fk_token_parent; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_token_parent ON jbpm_token USING btree (parent_);


--
-- TOC entry 2852 (class 1259 OID 276319)
-- Name: fk_token_procinst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_token_procinst ON jbpm_token USING btree (processinstance_);


--
-- TOC entry 2853 (class 1259 OID 276318)
-- Name: fk_token_subpi; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_token_subpi ON jbpm_token USING btree (subprocessinstance_);


--
-- TOC entry 2860 (class 1259 OID 276325)
-- Name: fk_trans_procdef; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_trans_procdef ON jbpm_transition USING btree (processdefinition_);


--
-- TOC entry 2861 (class 1259 OID 276324)
-- Name: fk_transition_from; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_transition_from ON jbpm_transition USING btree (from_);


--
-- TOC entry 2862 (class 1259 OID 276326)
-- Name: fk_transition_to; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_transition_to ON jbpm_transition USING btree (to_);


--
-- TOC entry 2833 (class 1259 OID 276309)
-- Name: fk_tsk_tskctrl; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_tsk_tskctrl ON jbpm_task USING btree (taskcontroller_);


--
-- TOC entry 2837 (class 1259 OID 276311)
-- Name: fk_tskactpol_plact; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_tskactpol_plact ON jbpm_taskactorpool USING btree (pooledactor_);


--
-- TOC entry 2840 (class 1259 OID 276312)
-- Name: fk_tskctrl_deleg; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_tskctrl_deleg ON jbpm_taskcontroller USING btree (taskcontrollerdelegation_);


--
-- TOC entry 2789 (class 1259 OID 276283)
-- Name: fk_tskdef_start; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_tskdef_start ON jbpm_moduledefinition USING btree (starttask_);


--
-- TOC entry 2847 (class 1259 OID 276313)
-- Name: fk_tskins_prcins; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_tskins_prcins ON jbpm_taskinstance USING btree (procinst_);


--
-- TOC entry 2871 (class 1259 OID 276334)
-- Name: fk_var_tskinst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_var_tskinst ON jbpm_variableinstance USING btree (taskinstance_);


--
-- TOC entry 2865 (class 1259 OID 276327)
-- Name: fk_varacc_procst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_varacc_procst ON jbpm_variableaccess USING btree (processstate_);


--
-- TOC entry 2866 (class 1259 OID 276328)
-- Name: fk_varacc_script; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_varacc_script ON jbpm_variableaccess USING btree (script_);


--
-- TOC entry 2867 (class 1259 OID 276329)
-- Name: fk_varacc_tskctrl; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_varacc_tskctrl ON jbpm_variableaccess USING btree (taskcontroller_);


--
-- TOC entry 2872 (class 1259 OID 276330)
-- Name: fk_varinst_prcinst; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_varinst_prcinst ON jbpm_variableinstance USING btree (processinstance_);


--
-- TOC entry 2873 (class 1259 OID 276332)
-- Name: fk_varinst_tk; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_varinst_tk ON jbpm_variableinstance USING btree (token_);


--
-- TOC entry 2874 (class 1259 OID 276331)
-- Name: fk_varinst_tkvarmp; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX fk_varinst_tkvarmp ON jbpm_variableinstance USING btree (tokenvariablemap_);


--
-- TOC entry 2536 (class 1259 OID 274853)
-- Name: idx_alf_acl_inh; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_alf_acl_inh ON alf_access_control_list USING btree (inherits, inherits_from);


--
-- TOC entry 2531 (class 1259 OID 274839)
-- Name: idx_alf_acs_ctms; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_alf_acs_ctms ON alf_acl_change_set USING btree (commit_time_ms);


--
-- TOC entry 2663 (class 1259 OID 275342)
-- Name: idx_alf_aud_ent_tm; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_alf_aud_ent_tm ON alf_audit_entry USING btree (audit_time);


--
-- TOC entry 2651 (class 1259 OID 275292)
-- Name: idx_alf_aud_mod_cr; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX idx_alf_aud_mod_cr ON alf_audit_model USING btree (content_crc);


--
-- TOC entry 2522 (class 1259 OID 274805)
-- Name: idx_alf_auth_aut; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_alf_auth_aut ON alf_authority USING btree (authority);


--
-- TOC entry 2572 (class 1259 OID 275005)
-- Name: idx_alf_cass_pri; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_alf_cass_pri ON alf_child_assoc USING btree (parent_node_id, is_primary, child_node_id);


--
-- TOC entry 2573 (class 1259 OID 275004)
-- Name: idx_alf_cass_qncrc; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_alf_cass_qncrc ON alf_child_assoc USING btree (qname_crc, type_qname_id, parent_node_id);


--
-- TOC entry 2607 (class 1259 OID 275132)
-- Name: idx_alf_conturl_cr; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX idx_alf_conturl_cr ON alf_content_url USING btree (content_url_short, content_url_crc);


--
-- TOC entry 2608 (class 1259 OID 275133)
-- Name: idx_alf_conturl_ot; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_alf_conturl_ot ON alf_content_url USING btree (orphan_time);


--
-- TOC entry 2596 (class 1259 OID 275105)
-- Name: idx_alf_lock_key; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX idx_alf_lock_key ON alf_lock USING btree (shared_resource_id, excl_resource_id);


--
-- TOC entry 2592 (class 1259 OID 275087)
-- Name: idx_alf_lockr_key; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX idx_alf_lockr_key ON alf_lock_resource USING btree (qname_ns_id, qname_localname);


--
-- TOC entry 2564 (class 1259 OID 274961)
-- Name: idx_alf_node_txn_type; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_alf_node_txn_type ON alf_node USING btree (transaction_id, type_qname_id);


--
-- TOC entry 2617 (class 1259 OID 275173)
-- Name: idx_alf_propc_clas; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_alf_propc_clas ON alf_prop_class USING btree (java_class_name);


--
-- TOC entry 2618 (class 1259 OID 275172)
-- Name: idx_alf_propc_crc; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX idx_alf_propc_crc ON alf_prop_class USING btree (java_class_name_crc, java_class_name_short);


--
-- TOC entry 2624 (class 1259 OID 275187)
-- Name: idx_alf_propd_val; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX idx_alf_propd_val ON alf_prop_double_value USING btree (double_value);


--
-- TOC entry 2621 (class 1259 OID 275179)
-- Name: idx_alf_propdt_dt; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_alf_propdt_dt ON alf_prop_date_value USING btree (full_year, month_of_year, day_of_month);


--
-- TOC entry 2641 (class 1259 OID 275246)
-- Name: idx_alf_propln_for; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_alf_propln_for ON alf_prop_link USING btree (root_prop_id, key_prop_id, value_prop_id);


--
-- TOC entry 2627 (class 1259 OID 275199)
-- Name: idx_alf_props_crc; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX idx_alf_props_crc ON alf_prop_string_value USING btree (string_end_lower, string_crc);


--
-- TOC entry 2628 (class 1259 OID 275198)
-- Name: idx_alf_props_str; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_alf_props_str ON alf_prop_string_value USING btree (string_value);


--
-- TOC entry 2647 (class 1259 OID 275276)
-- Name: idx_alf_propuctx; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX idx_alf_propuctx ON alf_prop_unique_ctx USING btree (value1_prop_id, value2_prop_id, value3_prop_id);


--
-- TOC entry 2633 (class 1259 OID 275218)
-- Name: idx_alf_propv_act; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX idx_alf_propv_act ON alf_prop_value USING btree (actual_type_id, long_value);


--
-- TOC entry 2634 (class 1259 OID 275217)
-- Name: idx_alf_propv_per; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_alf_propv_per ON alf_prop_value USING btree (persisted_type, long_value);


--
-- TOC entry 2553 (class 1259 OID 274915)
-- Name: idx_alf_txn_ctms; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_alf_txn_ctms ON alf_transaction USING btree (commit_time_ms, id);


--
-- TOC entry 2672 (class 1259 OID 275541)
-- Name: idx_avm_ce_lc_name; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_avm_ce_lc_name ON avm_child_entries USING btree (lc_name, parent_id);


--
-- TOC entry 2677 (class 1259 OID 275539)
-- Name: idx_avm_hl_revpk; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_avm_hl_revpk ON avm_history_links USING btree (descendent, ancestor);


--
-- TOC entry 2690 (class 1259 OID 275471)
-- Name: idx_avm_n_pi; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_avm_n_pi ON avm_nodes USING btree (primary_indirection);


--
-- TOC entry 2710 (class 1259 OID 275540)
-- Name: idx_avm_vr_revuq; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_avm_vr_revuq ON avm_version_roots USING btree (avm_store_id, version_id);


--
-- TOC entry 2711 (class 1259 OID 275508)
-- Name: idx_avm_vr_version; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_avm_vr_version ON avm_version_roots USING btree (version_id);


--
-- TOC entry 2875 (class 1259 OID 276335)
-- Name: idx_varinst_strval; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX idx_varinst_strval ON jbpm_variableinstance USING btree (name_, class_, stringvalue_, tokenvariablemap_);


--
-- TOC entry 2549 (class 1259 OID 274902)
-- Name: ip_address; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX ip_address ON alf_server USING btree (ip_address);


--
-- TOC entry 2505 (class 1259 OID 274750)
-- Name: locale_str; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX locale_str ON alf_locale USING btree (locale_str);


--
-- TOC entry 2512 (class 1259 OID 274771)
-- Name: ns_id; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX ns_id ON alf_qname USING btree (ns_id, local_name);


--
-- TOC entry 2574 (class 1259 OID 274999)
-- Name: parent_node_id; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX parent_node_id ON alf_child_assoc USING btree (parent_node_id, type_qname_id, child_node_name_crc, child_node_name);


--
-- TOC entry 2528 (class 1259 OID 274828)
-- Name: permission_id; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX permission_id ON alf_access_control_entry USING btree (permission_id, authority_id, allowed, applies);


--
-- TOC entry 2724 (class 1259 OID 275578)
-- Name: post_jobtasknode_idx; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX post_jobtasknode_idx ON alf_activity_post USING btree (job_task_node);


--
-- TOC entry 2725 (class 1259 OID 275579)
-- Name: post_status_idx; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE INDEX post_status_idx ON alf_activity_post USING btree (status);


--
-- TOC entry 2557 (class 1259 OID 274924)
-- Name: protocol; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX protocol ON alf_store USING btree (protocol, identifier);


--
-- TOC entry 2584 (class 1259 OID 275045)
-- Name: source_node_id; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX source_node_id ON alf_node_assoc USING btree (source_node_id, target_node_id, type_qname_id);


--
-- TOC entry 2565 (class 1259 OID 274960)
-- Name: store_id; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX store_id ON alf_node USING btree (store_id, uuid);


--
-- TOC entry 2516 (class 1259 OID 274785)
-- Name: type_qname_id; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX type_qname_id ON alf_permission USING btree (type_qname_id, name);


--
-- TOC entry 2508 (class 1259 OID 274758)
-- Name: uri; Type: INDEX; Schema: public; Owner: bne_local; Tablespace: 
--

CREATE UNIQUE INDEX uri ON alf_namespace USING btree (uri);


--
-- TOC entry 2886 (class 2606 OID 274576)
-- Name: act_fk_athrz_procedef; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_fk_athrz_procedef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 2878 (class 2606 OID 274544)
-- Name: act_fk_bytearr_depl; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_ge_bytearray
    ADD CONSTRAINT act_fk_bytearr_depl FOREIGN KEY (deployment_id_) REFERENCES act_re_deployment(id_);


--
-- TOC entry 2891 (class 2606 OID 274624)
-- Name: act_fk_event_exec; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_ru_event_subscr
    ADD CONSTRAINT act_fk_event_exec FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2880 (class 2606 OID 274558)
-- Name: act_fk_exe_parent; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_parent FOREIGN KEY (parent_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2881 (class 2606 OID 274552)
-- Name: act_fk_exe_procinst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2879 (class 2606 OID 274564)
-- Name: act_fk_exe_super; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_super FOREIGN KEY (super_exec_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2882 (class 2606 OID 274618)
-- Name: act_fk_job_exception; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_ru_job
    ADD CONSTRAINT act_fk_job_exception FOREIGN KEY (exception_stack_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2893 (class 2606 OID 274721)
-- Name: act_fk_memb_group; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_id_membership
    ADD CONSTRAINT act_fk_memb_group FOREIGN KEY (group_id_) REFERENCES act_id_group(id_);


--
-- TOC entry 2892 (class 2606 OID 274727)
-- Name: act_fk_memb_user; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_id_membership
    ADD CONSTRAINT act_fk_memb_user FOREIGN KEY (user_id_) REFERENCES act_id_user(id_);


--
-- TOC entry 2885 (class 2606 OID 274582)
-- Name: act_fk_task_exe; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_exe FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2883 (class 2606 OID 274594)
-- Name: act_fk_task_procdef; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_procdef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 2884 (class 2606 OID 274588)
-- Name: act_fk_task_procinst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2887 (class 2606 OID 274570)
-- Name: act_fk_tskass_task; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_fk_tskass_task FOREIGN KEY (task_id_) REFERENCES act_ru_task(id_);


--
-- TOC entry 2888 (class 2606 OID 274612)
-- Name: act_fk_var_bytearray; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_bytearray FOREIGN KEY (bytearray_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2890 (class 2606 OID 274600)
-- Name: act_fk_var_exe; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_exe FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2889 (class 2606 OID 274606)
-- Name: act_fk_var_procinst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2967 (class 2606 OID 275831)
-- Name: fk_action_actndel; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_action
    ADD CONSTRAINT fk_action_actndel FOREIGN KEY (actiondelegation_) REFERENCES jbpm_delegation(id_);


--
-- TOC entry 2968 (class 2606 OID 275826)
-- Name: fk_action_event; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_action
    ADD CONSTRAINT fk_action_event FOREIGN KEY (event_) REFERENCES jbpm_event(id_);


--
-- TOC entry 2966 (class 2606 OID 275836)
-- Name: fk_action_expthdl; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_action
    ADD CONSTRAINT fk_action_expthdl FOREIGN KEY (exceptionhandler_) REFERENCES jbpm_exceptionhandler(id_);


--
-- TOC entry 2969 (class 2606 OID 275821)
-- Name: fk_action_procdef; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_action
    ADD CONSTRAINT fk_action_procdef FOREIGN KEY (processdefinition_) REFERENCES jbpm_processdefinition(id_);


--
-- TOC entry 2971 (class 2606 OID 275811)
-- Name: fk_action_refact; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_action
    ADD CONSTRAINT fk_action_refact FOREIGN KEY (referencedaction_) REFERENCES jbpm_action(id_);


--
-- TOC entry 2898 (class 2606 OID 274813)
-- Name: fk_alf_ace_auth; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_access_control_entry
    ADD CONSTRAINT fk_alf_ace_auth FOREIGN KEY (authority_id) REFERENCES alf_authority(id);


--
-- TOC entry 2897 (class 2606 OID 274818)
-- Name: fk_alf_ace_ctx; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_access_control_entry
    ADD CONSTRAINT fk_alf_ace_ctx FOREIGN KEY (context_id) REFERENCES alf_ace_context(id);


--
-- TOC entry 2896 (class 2606 OID 274823)
-- Name: fk_alf_ace_perm; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_access_control_entry
    ADD CONSTRAINT fk_alf_ace_perm FOREIGN KEY (permission_id) REFERENCES alf_permission(id);


--
-- TOC entry 2899 (class 2606 OID 274847)
-- Name: fk_alf_acl_acs; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_access_control_list
    ADD CONSTRAINT fk_alf_acl_acs FOREIGN KEY (acl_change_set) REFERENCES alf_acl_change_set(id);


--
-- TOC entry 2901 (class 2606 OID 274862)
-- Name: fk_alf_aclm_ace; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_acl_member
    ADD CONSTRAINT fk_alf_aclm_ace FOREIGN KEY (ace_id) REFERENCES alf_access_control_entry(id);


--
-- TOC entry 2900 (class 2606 OID 274867)
-- Name: fk_alf_aclm_acl; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_acl_member
    ADD CONSTRAINT fk_alf_aclm_acl FOREIGN KEY (acl_id) REFERENCES alf_access_control_list(id);


--
-- TOC entry 2940 (class 2606 OID 275303)
-- Name: fk_alf_aud_app_an; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_audit_app
    ADD CONSTRAINT fk_alf_aud_app_an FOREIGN KEY (app_name_id) REFERENCES alf_prop_value(id);


--
-- TOC entry 2938 (class 2606 OID 275313)
-- Name: fk_alf_aud_app_dis; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_audit_app
    ADD CONSTRAINT fk_alf_aud_app_dis FOREIGN KEY (disabled_paths_id) REFERENCES alf_prop_root(id);


--
-- TOC entry 2939 (class 2606 OID 275308)
-- Name: fk_alf_aud_app_mod; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_audit_app
    ADD CONSTRAINT fk_alf_aud_app_mod FOREIGN KEY (audit_model_id) REFERENCES alf_audit_model(id) ON DELETE CASCADE;


--
-- TOC entry 2943 (class 2606 OID 275327)
-- Name: fk_alf_aud_ent_app; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_audit_entry
    ADD CONSTRAINT fk_alf_aud_ent_app FOREIGN KEY (audit_app_id) REFERENCES alf_audit_app(id) ON DELETE CASCADE;


--
-- TOC entry 2941 (class 2606 OID 275337)
-- Name: fk_alf_aud_ent_pro; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_audit_entry
    ADD CONSTRAINT fk_alf_aud_ent_pro FOREIGN KEY (audit_values_id) REFERENCES alf_prop_root(id);


--
-- TOC entry 2942 (class 2606 OID 275332)
-- Name: fk_alf_aud_ent_use; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_audit_entry
    ADD CONSTRAINT fk_alf_aud_ent_use FOREIGN KEY (audit_user_id) REFERENCES alf_prop_value(id);


--
-- TOC entry 2937 (class 2606 OID 275287)
-- Name: fk_alf_aud_mod_cd; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_audit_model
    ADD CONSTRAINT fk_alf_aud_mod_cd FOREIGN KEY (content_data_id) REFERENCES alf_content_data(id);


--
-- TOC entry 2902 (class 2606 OID 274887)
-- Name: fk_alf_autha_ali; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_authority_alias
    ADD CONSTRAINT fk_alf_autha_ali FOREIGN KEY (alias_id) REFERENCES alf_authority(id);


--
-- TOC entry 2903 (class 2606 OID 274882)
-- Name: fk_alf_autha_aut; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_authority_alias
    ADD CONSTRAINT fk_alf_autha_aut FOREIGN KEY (auth_id) REFERENCES alf_authority(id);


--
-- TOC entry 2914 (class 2606 OID 274979)
-- Name: fk_alf_cass_cnode; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_child_assoc
    ADD CONSTRAINT fk_alf_cass_cnode FOREIGN KEY (child_node_id) REFERENCES alf_node(id);


--
-- TOC entry 2913 (class 2606 OID 274984)
-- Name: fk_alf_cass_pnode; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_child_assoc
    ADD CONSTRAINT fk_alf_cass_pnode FOREIGN KEY (parent_node_id) REFERENCES alf_node(id);


--
-- TOC entry 2912 (class 2606 OID 274989)
-- Name: fk_alf_cass_qnns; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_child_assoc
    ADD CONSTRAINT fk_alf_cass_qnns FOREIGN KEY (qname_ns_id) REFERENCES alf_namespace(id);


--
-- TOC entry 2911 (class 2606 OID 274994)
-- Name: fk_alf_cass_tqn; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_child_assoc
    ADD CONSTRAINT fk_alf_cass_tqn FOREIGN KEY (type_qname_id) REFERENCES alf_qname(id);


--
-- TOC entry 2927 (class 2606 OID 275151)
-- Name: fk_alf_cont_enc; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_content_data
    ADD CONSTRAINT fk_alf_cont_enc FOREIGN KEY (content_encoding_id) REFERENCES alf_encoding(id);


--
-- TOC entry 2926 (class 2606 OID 275156)
-- Name: fk_alf_cont_loc; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_content_data
    ADD CONSTRAINT fk_alf_cont_loc FOREIGN KEY (content_locale_id) REFERENCES alf_locale(id);


--
-- TOC entry 2928 (class 2606 OID 275146)
-- Name: fk_alf_cont_mim; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_content_data
    ADD CONSTRAINT fk_alf_cont_mim FOREIGN KEY (content_mimetype_id) REFERENCES alf_mimetype(id);


--
-- TOC entry 2929 (class 2606 OID 275141)
-- Name: fk_alf_cont_url; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_content_data
    ADD CONSTRAINT fk_alf_cont_url FOREIGN KEY (content_url_id) REFERENCES alf_content_url(id);


--
-- TOC entry 2924 (class 2606 OID 275100)
-- Name: fk_alf_lock_excl; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_lock
    ADD CONSTRAINT fk_alf_lock_excl FOREIGN KEY (excl_resource_id) REFERENCES alf_lock_resource(id);


--
-- TOC entry 2925 (class 2606 OID 275095)
-- Name: fk_alf_lock_shared; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_lock
    ADD CONSTRAINT fk_alf_lock_shared FOREIGN KEY (shared_resource_id) REFERENCES alf_lock_resource(id);


--
-- TOC entry 2923 (class 2606 OID 275082)
-- Name: fk_alf_lockr_ns; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_lock_resource
    ADD CONSTRAINT fk_alf_lockr_ns FOREIGN KEY (qname_ns_id) REFERENCES alf_namespace(id);


--
-- TOC entry 2916 (class 2606 OID 275011)
-- Name: fk_alf_nasp_n; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_node_aspects
    ADD CONSTRAINT fk_alf_nasp_n FOREIGN KEY (node_id) REFERENCES alf_node(id);


--
-- TOC entry 2915 (class 2606 OID 275016)
-- Name: fk_alf_nasp_qn; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_node_aspects
    ADD CONSTRAINT fk_alf_nasp_qn FOREIGN KEY (qname_id) REFERENCES alf_qname(id);


--
-- TOC entry 2919 (class 2606 OID 275030)
-- Name: fk_alf_nass_snode; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_node_assoc
    ADD CONSTRAINT fk_alf_nass_snode FOREIGN KEY (source_node_id) REFERENCES alf_node(id);


--
-- TOC entry 2918 (class 2606 OID 275035)
-- Name: fk_alf_nass_tnode; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_node_assoc
    ADD CONSTRAINT fk_alf_nass_tnode FOREIGN KEY (target_node_id) REFERENCES alf_node(id);


--
-- TOC entry 2917 (class 2606 OID 275040)
-- Name: fk_alf_nass_tqn; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_node_assoc
    ADD CONSTRAINT fk_alf_nass_tqn FOREIGN KEY (type_qname_id) REFERENCES alf_qname(id);


--
-- TOC entry 2910 (class 2606 OID 274935)
-- Name: fk_alf_node_acl; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_node
    ADD CONSTRAINT fk_alf_node_acl FOREIGN KEY (acl_id) REFERENCES alf_access_control_list(id);


--
-- TOC entry 2906 (class 2606 OID 274955)
-- Name: fk_alf_node_loc; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_node
    ADD CONSTRAINT fk_alf_node_loc FOREIGN KEY (locale_id) REFERENCES alf_locale(id);


--
-- TOC entry 2909 (class 2606 OID 274940)
-- Name: fk_alf_node_store; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_node
    ADD CONSTRAINT fk_alf_node_store FOREIGN KEY (store_id) REFERENCES alf_store(id);


--
-- TOC entry 2908 (class 2606 OID 274945)
-- Name: fk_alf_node_tqn; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_node
    ADD CONSTRAINT fk_alf_node_tqn FOREIGN KEY (type_qname_id) REFERENCES alf_qname(id);


--
-- TOC entry 2907 (class 2606 OID 274950)
-- Name: fk_alf_node_txn; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_node
    ADD CONSTRAINT fk_alf_node_txn FOREIGN KEY (transaction_id) REFERENCES alf_transaction(id);


--
-- TOC entry 2922 (class 2606 OID 275057)
-- Name: fk_alf_nprop_loc; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_node_properties
    ADD CONSTRAINT fk_alf_nprop_loc FOREIGN KEY (locale_id) REFERENCES alf_locale(id);


--
-- TOC entry 2921 (class 2606 OID 275062)
-- Name: fk_alf_nprop_n; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_node_properties
    ADD CONSTRAINT fk_alf_nprop_n FOREIGN KEY (node_id) REFERENCES alf_node(id);


--
-- TOC entry 2920 (class 2606 OID 275067)
-- Name: fk_alf_nprop_qn; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_node_properties
    ADD CONSTRAINT fk_alf_nprop_qn FOREIGN KEY (qname_id) REFERENCES alf_qname(id);


--
-- TOC entry 2895 (class 2606 OID 274780)
-- Name: fk_alf_perm_tqn; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_permission
    ADD CONSTRAINT fk_alf_perm_tqn FOREIGN KEY (type_qname_id) REFERENCES alf_qname(id);


--
-- TOC entry 2931 (class 2606 OID 275236)
-- Name: fk_alf_propln_key; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_prop_link
    ADD CONSTRAINT fk_alf_propln_key FOREIGN KEY (key_prop_id) REFERENCES alf_prop_value(id) ON DELETE CASCADE;


--
-- TOC entry 2932 (class 2606 OID 275231)
-- Name: fk_alf_propln_root; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_prop_link
    ADD CONSTRAINT fk_alf_propln_root FOREIGN KEY (root_prop_id) REFERENCES alf_prop_root(id) ON DELETE CASCADE;


--
-- TOC entry 2930 (class 2606 OID 275241)
-- Name: fk_alf_propln_val; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_prop_link
    ADD CONSTRAINT fk_alf_propln_val FOREIGN KEY (value_prop_id) REFERENCES alf_prop_value(id) ON DELETE CASCADE;


--
-- TOC entry 2933 (class 2606 OID 275271)
-- Name: fk_alf_propuctx_p1; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_prop_unique_ctx
    ADD CONSTRAINT fk_alf_propuctx_p1 FOREIGN KEY (prop1_id) REFERENCES alf_prop_root(id);


--
-- TOC entry 2936 (class 2606 OID 275256)
-- Name: fk_alf_propuctx_v1; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_prop_unique_ctx
    ADD CONSTRAINT fk_alf_propuctx_v1 FOREIGN KEY (value1_prop_id) REFERENCES alf_prop_value(id) ON DELETE CASCADE;


--
-- TOC entry 2935 (class 2606 OID 275261)
-- Name: fk_alf_propuctx_v2; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_prop_unique_ctx
    ADD CONSTRAINT fk_alf_propuctx_v2 FOREIGN KEY (value2_prop_id) REFERENCES alf_prop_value(id) ON DELETE CASCADE;


--
-- TOC entry 2934 (class 2606 OID 275266)
-- Name: fk_alf_propuctx_v3; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_prop_unique_ctx
    ADD CONSTRAINT fk_alf_propuctx_v3 FOREIGN KEY (value3_prop_id) REFERENCES alf_prop_value(id) ON DELETE CASCADE;


--
-- TOC entry 2894 (class 2606 OID 274766)
-- Name: fk_alf_qname_ns; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_qname
    ADD CONSTRAINT fk_alf_qname_ns FOREIGN KEY (ns_id) REFERENCES alf_namespace(id);


--
-- TOC entry 2905 (class 2606 OID 274967)
-- Name: fk_alf_store_root; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_store
    ADD CONSTRAINT fk_alf_store_root FOREIGN KEY (root_node_id) REFERENCES alf_node(id);


--
-- TOC entry 2964 (class 2606 OID 275603)
-- Name: fk_alf_sub_node; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_subscriptions
    ADD CONSTRAINT fk_alf_sub_node FOREIGN KEY (node_id) REFERENCES alf_node(id) ON DELETE CASCADE;


--
-- TOC entry 2965 (class 2606 OID 275598)
-- Name: fk_alf_sub_user; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_subscriptions
    ADD CONSTRAINT fk_alf_sub_user FOREIGN KEY (user_node_id) REFERENCES alf_node(id) ON DELETE CASCADE;


--
-- TOC entry 2904 (class 2606 OID 274910)
-- Name: fk_alf_txn_svr; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_transaction
    ADD CONSTRAINT fk_alf_txn_svr FOREIGN KEY (server_id) REFERENCES alf_server(id);


--
-- TOC entry 2963 (class 2606 OID 275587)
-- Name: fk_alf_usaged_n; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY alf_usage_delta
    ADD CONSTRAINT fk_alf_usaged_n FOREIGN KEY (node_id) REFERENCES alf_node(id);


--
-- TOC entry 2947 (class 2606 OID 275429)
-- Name: fk_avm_ce_child; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_child_entries
    ADD CONSTRAINT fk_avm_ce_child FOREIGN KEY (child_id) REFERENCES avm_nodes(id);


--
-- TOC entry 2946 (class 2606 OID 275435)
-- Name: fk_avm_ce_parent; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_child_entries
    ADD CONSTRAINT fk_avm_ce_parent FOREIGN KEY (parent_id) REFERENCES avm_nodes(id);


--
-- TOC entry 2948 (class 2606 OID 275447)
-- Name: fk_avm_hl_ancestor; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_history_links
    ADD CONSTRAINT fk_avm_hl_ancestor FOREIGN KEY (ancestor) REFERENCES avm_nodes(id);


--
-- TOC entry 2949 (class 2606 OID 275441)
-- Name: fk_avm_hl_desc; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_history_links
    ADD CONSTRAINT fk_avm_hl_desc FOREIGN KEY (descendent) REFERENCES avm_nodes(id);


--
-- TOC entry 2951 (class 2606 OID 275453)
-- Name: fk_avm_ml_from; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_merge_links
    ADD CONSTRAINT fk_avm_ml_from FOREIGN KEY (mfrom) REFERENCES avm_nodes(id);


--
-- TOC entry 2950 (class 2606 OID 275459)
-- Name: fk_avm_ml_to; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_merge_links
    ADD CONSTRAINT fk_avm_ml_to FOREIGN KEY (mto) REFERENCES avm_nodes(id);


--
-- TOC entry 2955 (class 2606 OID 275472)
-- Name: fk_avm_n_acl; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_nodes
    ADD CONSTRAINT fk_avm_n_acl FOREIGN KEY (acl_id) REFERENCES alf_access_control_list(id);


--
-- TOC entry 2954 (class 2606 OID 275478)
-- Name: fk_avm_n_store; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_nodes
    ADD CONSTRAINT fk_avm_n_store FOREIGN KEY (store_new_id) REFERENCES avm_stores(id);


--
-- TOC entry 2945 (class 2606 OID 275423)
-- Name: fk_avm_nasp_n; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_aspects
    ADD CONSTRAINT fk_avm_nasp_n FOREIGN KEY (node_id) REFERENCES avm_nodes(id);


--
-- TOC entry 2944 (class 2606 OID 275522)
-- Name: fk_avm_nasp_qn; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_aspects
    ADD CONSTRAINT fk_avm_nasp_qn FOREIGN KEY (qname_id) REFERENCES alf_qname(id);


--
-- TOC entry 2953 (class 2606 OID 275465)
-- Name: fk_avm_nprop_n; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_node_properties
    ADD CONSTRAINT fk_avm_nprop_n FOREIGN KEY (node_id) REFERENCES avm_nodes(id);


--
-- TOC entry 2952 (class 2606 OID 275528)
-- Name: fk_avm_nprop_qn; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_node_properties
    ADD CONSTRAINT fk_avm_nprop_qn FOREIGN KEY (qname_id) REFERENCES alf_qname(id);


--
-- TOC entry 2958 (class 2606 OID 275496)
-- Name: fk_avm_s_acl; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_stores
    ADD CONSTRAINT fk_avm_s_acl FOREIGN KEY (acl_id) REFERENCES alf_access_control_list(id);


--
-- TOC entry 2959 (class 2606 OID 275490)
-- Name: fk_avm_s_root; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_stores
    ADD CONSTRAINT fk_avm_s_root FOREIGN KEY (current_root_id) REFERENCES avm_nodes(id);


--
-- TOC entry 2956 (class 2606 OID 275534)
-- Name: fk_avm_sprop_qname; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_store_properties
    ADD CONSTRAINT fk_avm_sprop_qname FOREIGN KEY (qname_id) REFERENCES alf_qname(id);


--
-- TOC entry 2957 (class 2606 OID 275484)
-- Name: fk_avm_sprop_store; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_store_properties
    ADD CONSTRAINT fk_avm_sprop_store FOREIGN KEY (avm_store_id) REFERENCES avm_stores(id);


--
-- TOC entry 2960 (class 2606 OID 275502)
-- Name: fk_avm_vlne_vr; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_version_layered_node_entry
    ADD CONSTRAINT fk_avm_vlne_vr FOREIGN KEY (version_root_id) REFERENCES avm_version_roots(id);


--
-- TOC entry 2961 (class 2606 OID 275515)
-- Name: fk_avm_vr_root; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_version_roots
    ADD CONSTRAINT fk_avm_vr_root FOREIGN KEY (root_id) REFERENCES avm_nodes(id);


--
-- TOC entry 2962 (class 2606 OID 275509)
-- Name: fk_avm_vr_store; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY avm_version_roots
    ADD CONSTRAINT fk_avm_vr_store FOREIGN KEY (avm_store_id) REFERENCES avm_stores(id);


--
-- TOC entry 2972 (class 2606 OID 275841)
-- Name: fk_bytearr_fildef; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_bytearray
    ADD CONSTRAINT fk_bytearr_fildef FOREIGN KEY (filedefinition_) REFERENCES jbpm_moduledefinition(id_);


--
-- TOC entry 2973 (class 2606 OID 275846)
-- Name: fk_byteblock_file; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_byteblock
    ADD CONSTRAINT fk_byteblock_file FOREIGN KEY (processfile_) REFERENCES jbpm_bytearray(id_);


--
-- TOC entry 3049 (class 2606 OID 276236)
-- Name: fk_byteinst_array; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_variableinstance
    ADD CONSTRAINT fk_byteinst_array FOREIGN KEY (bytearrayvalue_) REFERENCES jbpm_bytearray(id_);


--
-- TOC entry 2975 (class 2606 OID 275851)
-- Name: fk_comment_token; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_comment
    ADD CONSTRAINT fk_comment_token FOREIGN KEY (token_) REFERENCES jbpm_token(id_);


--
-- TOC entry 2974 (class 2606 OID 275856)
-- Name: fk_comment_tsk; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_comment
    ADD CONSTRAINT fk_comment_tsk FOREIGN KEY (taskinstance_) REFERENCES jbpm_taskinstance(id_);


--
-- TOC entry 2970 (class 2606 OID 275816)
-- Name: fk_crtetimeract_ta; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_action
    ADD CONSTRAINT fk_crtetimeract_ta FOREIGN KEY (timeraction_) REFERENCES jbpm_action(id_);


--
-- TOC entry 2976 (class 2606 OID 275861)
-- Name: fk_deccond_dec; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_decisionconditions
    ADD CONSTRAINT fk_deccond_dec FOREIGN KEY (decision_) REFERENCES jbpm_node(id_);


--
-- TOC entry 3009 (class 2606 OID 276001)
-- Name: fk_decision_deleg; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_node
    ADD CONSTRAINT fk_decision_deleg FOREIGN KEY (decisiondelegation) REFERENCES jbpm_delegation(id_);


--
-- TOC entry 2977 (class 2606 OID 275866)
-- Name: fk_delegation_prcd; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_delegation
    ADD CONSTRAINT fk_delegation_prcd FOREIGN KEY (processdefinition_) REFERENCES jbpm_processdefinition(id_);


--
-- TOC entry 2979 (class 2606 OID 275881)
-- Name: fk_event_node; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_event
    ADD CONSTRAINT fk_event_node FOREIGN KEY (node_) REFERENCES jbpm_node(id_);


--
-- TOC entry 2981 (class 2606 OID 275871)
-- Name: fk_event_procdef; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_event
    ADD CONSTRAINT fk_event_procdef FOREIGN KEY (processdefinition_) REFERENCES jbpm_processdefinition(id_);


--
-- TOC entry 2978 (class 2606 OID 275886)
-- Name: fk_event_task; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_event
    ADD CONSTRAINT fk_event_task FOREIGN KEY (task_) REFERENCES jbpm_task(id_);


--
-- TOC entry 2980 (class 2606 OID 275876)
-- Name: fk_event_trans; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_event
    ADD CONSTRAINT fk_event_trans FOREIGN KEY (transition_) REFERENCES jbpm_transition(id_);


--
-- TOC entry 2985 (class 2606 OID 275896)
-- Name: fk_job_action; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_job
    ADD CONSTRAINT fk_job_action FOREIGN KEY (action_) REFERENCES jbpm_action(id_);


--
-- TOC entry 2983 (class 2606 OID 275906)
-- Name: fk_job_node; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_job
    ADD CONSTRAINT fk_job_node FOREIGN KEY (node_) REFERENCES jbpm_node(id_);


--
-- TOC entry 2986 (class 2606 OID 275891)
-- Name: fk_job_prinst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_job
    ADD CONSTRAINT fk_job_prinst FOREIGN KEY (processinstance_) REFERENCES jbpm_processinstance(id_);


--
-- TOC entry 2984 (class 2606 OID 275901)
-- Name: fk_job_token; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_job
    ADD CONSTRAINT fk_job_token FOREIGN KEY (token_) REFERENCES jbpm_token(id_);


--
-- TOC entry 2982 (class 2606 OID 275911)
-- Name: fk_job_tskinst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_job
    ADD CONSTRAINT fk_job_tskinst FOREIGN KEY (taskinstance_) REFERENCES jbpm_taskinstance(id_);


--
-- TOC entry 2990 (class 2606 OID 275961)
-- Name: fk_log_action; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_log
    ADD CONSTRAINT fk_log_action FOREIGN KEY (action_) REFERENCES jbpm_action(id_);


--
-- TOC entry 2994 (class 2606 OID 275941)
-- Name: fk_log_childtoken; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_log
    ADD CONSTRAINT fk_log_childtoken FOREIGN KEY (child_) REFERENCES jbpm_token(id_);


--
-- TOC entry 2998 (class 2606 OID 275921)
-- Name: fk_log_destnode; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_log
    ADD CONSTRAINT fk_log_destnode FOREIGN KEY (destinationnode_) REFERENCES jbpm_node(id_);


--
-- TOC entry 2991 (class 2606 OID 275956)
-- Name: fk_log_newbytes; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_log
    ADD CONSTRAINT fk_log_newbytes FOREIGN KEY (newbytearray_) REFERENCES jbpm_bytearray(id_);


--
-- TOC entry 2988 (class 2606 OID 275971)
-- Name: fk_log_node; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_log
    ADD CONSTRAINT fk_log_node FOREIGN KEY (node_) REFERENCES jbpm_node(id_);


--
-- TOC entry 2993 (class 2606 OID 275946)
-- Name: fk_log_oldbytes; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_log
    ADD CONSTRAINT fk_log_oldbytes FOREIGN KEY (oldbytearray_) REFERENCES jbpm_bytearray(id_);


--
-- TOC entry 2987 (class 2606 OID 275976)
-- Name: fk_log_parent; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_log
    ADD CONSTRAINT fk_log_parent FOREIGN KEY (parent_) REFERENCES jbpm_log(id_);


--
-- TOC entry 2999 (class 2606 OID 275916)
-- Name: fk_log_sourcenode; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_log
    ADD CONSTRAINT fk_log_sourcenode FOREIGN KEY (sourcenode_) REFERENCES jbpm_node(id_);


--
-- TOC entry 2992 (class 2606 OID 275951)
-- Name: fk_log_swiminst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_log
    ADD CONSTRAINT fk_log_swiminst FOREIGN KEY (swimlaneinstance_) REFERENCES jbpm_swimlaneinstance(id_);


--
-- TOC entry 2995 (class 2606 OID 275936)
-- Name: fk_log_taskinst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_log
    ADD CONSTRAINT fk_log_taskinst FOREIGN KEY (taskinstance_) REFERENCES jbpm_taskinstance(id_);


--
-- TOC entry 2997 (class 2606 OID 275926)
-- Name: fk_log_token; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_log
    ADD CONSTRAINT fk_log_token FOREIGN KEY (token_) REFERENCES jbpm_token(id_);


--
-- TOC entry 2996 (class 2606 OID 275931)
-- Name: fk_log_transition; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_log
    ADD CONSTRAINT fk_log_transition FOREIGN KEY (transition_) REFERENCES jbpm_transition(id_);


--
-- TOC entry 2989 (class 2606 OID 275966)
-- Name: fk_log_varinst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_log
    ADD CONSTRAINT fk_log_varinst FOREIGN KEY (variableinstance_) REFERENCES jbpm_variableinstance(id_);


--
-- TOC entry 3001 (class 2606 OID 275981)
-- Name: fk_moddef_procdef; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_moduledefinition
    ADD CONSTRAINT fk_moddef_procdef FOREIGN KEY (processdefinition_) REFERENCES jbpm_processdefinition(id_);


--
-- TOC entry 3003 (class 2606 OID 275991)
-- Name: fk_modinst_prcinst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_moduleinstance
    ADD CONSTRAINT fk_modinst_prcinst FOREIGN KEY (processinstance_) REFERENCES jbpm_processinstance(id_);


--
-- TOC entry 3007 (class 2606 OID 276011)
-- Name: fk_node_action; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_node
    ADD CONSTRAINT fk_node_action FOREIGN KEY (action_) REFERENCES jbpm_action(id_);


--
-- TOC entry 3008 (class 2606 OID 276006)
-- Name: fk_node_procdef; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_node
    ADD CONSTRAINT fk_node_procdef FOREIGN KEY (processdefinition_) REFERENCES jbpm_processdefinition(id_);


--
-- TOC entry 3005 (class 2606 OID 276021)
-- Name: fk_node_script; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_node
    ADD CONSTRAINT fk_node_script FOREIGN KEY (script_) REFERENCES jbpm_action(id_);


--
-- TOC entry 3004 (class 2606 OID 276026)
-- Name: fk_node_superstate; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_node
    ADD CONSTRAINT fk_node_superstate FOREIGN KEY (superstate_) REFERENCES jbpm_node(id_);


--
-- TOC entry 3010 (class 2606 OID 276031)
-- Name: fk_pooledactor_sli; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_pooledactor
    ADD CONSTRAINT fk_pooledactor_sli FOREIGN KEY (swimlaneinstance_) REFERENCES jbpm_swimlaneinstance(id_);


--
-- TOC entry 3011 (class 2606 OID 276036)
-- Name: fk_procdef_strtsta; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_processdefinition
    ADD CONSTRAINT fk_procdef_strtsta FOREIGN KEY (startstate_) REFERENCES jbpm_node(id_);


--
-- TOC entry 3014 (class 2606 OID 276041)
-- Name: fk_procin_procdef; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_processinstance
    ADD CONSTRAINT fk_procin_procdef FOREIGN KEY (processdefinition_) REFERENCES jbpm_processdefinition(id_);


--
-- TOC entry 3013 (class 2606 OID 276046)
-- Name: fk_procin_roottkn; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_processinstance
    ADD CONSTRAINT fk_procin_roottkn FOREIGN KEY (roottoken_) REFERENCES jbpm_token(id_);


--
-- TOC entry 3012 (class 2606 OID 276051)
-- Name: fk_procin_sproctkn; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_processinstance
    ADD CONSTRAINT fk_procin_sproctkn FOREIGN KEY (superprocesstoken_) REFERENCES jbpm_token(id_);


--
-- TOC entry 3006 (class 2606 OID 276016)
-- Name: fk_procst_sbprcdef; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_node
    ADD CONSTRAINT fk_procst_sbprcdef FOREIGN KEY (subprocessdefinition_) REFERENCES jbpm_processdefinition(id_);


--
-- TOC entry 3015 (class 2606 OID 276061)
-- Name: fk_rtactn_action; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_runtimeaction
    ADD CONSTRAINT fk_rtactn_action FOREIGN KEY (action_) REFERENCES jbpm_action(id_);


--
-- TOC entry 3016 (class 2606 OID 276056)
-- Name: fk_rtactn_procinst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_runtimeaction
    ADD CONSTRAINT fk_rtactn_procinst FOREIGN KEY (processinstance_) REFERENCES jbpm_processinstance(id_);


--
-- TOC entry 3019 (class 2606 OID 276081)
-- Name: fk_swimlaneinst_sl; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_swimlaneinstance
    ADD CONSTRAINT fk_swimlaneinst_sl FOREIGN KEY (swimlane_) REFERENCES jbpm_swimlane(id_);


--
-- TOC entry 3020 (class 2606 OID 276076)
-- Name: fk_swimlaneinst_tm; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_swimlaneinstance
    ADD CONSTRAINT fk_swimlaneinst_tm FOREIGN KEY (taskmgmtinstance_) REFERENCES jbpm_moduleinstance(id_);


--
-- TOC entry 3018 (class 2606 OID 276066)
-- Name: fk_swl_assdel; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_swimlane
    ADD CONSTRAINT fk_swl_assdel FOREIGN KEY (assignmentdelegation_) REFERENCES jbpm_delegation(id_);


--
-- TOC entry 3017 (class 2606 OID 276071)
-- Name: fk_swl_tskmgmtdef; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_swimlane
    ADD CONSTRAINT fk_swl_tskmgmtdef FOREIGN KEY (taskmgmtdefinition_) REFERENCES jbpm_moduledefinition(id_);


--
-- TOC entry 3025 (class 2606 OID 276096)
-- Name: fk_task_assdel; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_task
    ADD CONSTRAINT fk_task_assdel FOREIGN KEY (assignmentdelegation_) REFERENCES jbpm_delegation(id_);


--
-- TOC entry 3026 (class 2606 OID 276091)
-- Name: fk_task_procdef; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_task
    ADD CONSTRAINT fk_task_procdef FOREIGN KEY (processdefinition_) REFERENCES jbpm_processdefinition(id_);


--
-- TOC entry 3027 (class 2606 OID 276086)
-- Name: fk_task_startst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_task
    ADD CONSTRAINT fk_task_startst FOREIGN KEY (startstate_) REFERENCES jbpm_node(id_);


--
-- TOC entry 3024 (class 2606 OID 276101)
-- Name: fk_task_swimlane; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_task
    ADD CONSTRAINT fk_task_swimlane FOREIGN KEY (swimlane_) REFERENCES jbpm_swimlane(id_);


--
-- TOC entry 3022 (class 2606 OID 276111)
-- Name: fk_task_taskmgtdef; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_task
    ADD CONSTRAINT fk_task_taskmgtdef FOREIGN KEY (taskmgmtdefinition_) REFERENCES jbpm_moduledefinition(id_);


--
-- TOC entry 3023 (class 2606 OID 276106)
-- Name: fk_task_tasknode; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_task
    ADD CONSTRAINT fk_task_tasknode FOREIGN KEY (tasknode_) REFERENCES jbpm_node(id_);


--
-- TOC entry 3029 (class 2606 OID 276121)
-- Name: fk_taskactpl_tski; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_taskactorpool
    ADD CONSTRAINT fk_taskactpl_tski FOREIGN KEY (taskinstance_) REFERENCES jbpm_taskinstance(id_);


--
-- TOC entry 3032 (class 2606 OID 276151)
-- Name: fk_taskinst_slinst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_taskinstance
    ADD CONSTRAINT fk_taskinst_slinst FOREIGN KEY (swimlaninstance_) REFERENCES jbpm_swimlaneinstance(id_);


--
-- TOC entry 3031 (class 2606 OID 276156)
-- Name: fk_taskinst_task; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_taskinstance
    ADD CONSTRAINT fk_taskinst_task FOREIGN KEY (task_) REFERENCES jbpm_task(id_);


--
-- TOC entry 3034 (class 2606 OID 276141)
-- Name: fk_taskinst_tminst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_taskinstance
    ADD CONSTRAINT fk_taskinst_tminst FOREIGN KEY (taskmgmtinstance_) REFERENCES jbpm_moduleinstance(id_);


--
-- TOC entry 3033 (class 2606 OID 276146)
-- Name: fk_taskinst_token; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_taskinstance
    ADD CONSTRAINT fk_taskinst_token FOREIGN KEY (token_) REFERENCES jbpm_token(id_);


--
-- TOC entry 3002 (class 2606 OID 275996)
-- Name: fk_taskmgtinst_tmd; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_moduleinstance
    ADD CONSTRAINT fk_taskmgtinst_tmd FOREIGN KEY (taskmgmtdefinition_) REFERENCES jbpm_moduledefinition(id_);


--
-- TOC entry 3040 (class 2606 OID 276186)
-- Name: fk_tkvarmap_ctxt; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_tokenvariablemap
    ADD CONSTRAINT fk_tkvarmap_ctxt FOREIGN KEY (contextinstance_) REFERENCES jbpm_moduleinstance(id_);


--
-- TOC entry 3041 (class 2606 OID 276181)
-- Name: fk_tkvarmap_token; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_tokenvariablemap
    ADD CONSTRAINT fk_tkvarmap_token FOREIGN KEY (token_) REFERENCES jbpm_token(id_);


--
-- TOC entry 3037 (class 2606 OID 276171)
-- Name: fk_token_node; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_token
    ADD CONSTRAINT fk_token_node FOREIGN KEY (node_) REFERENCES jbpm_node(id_);


--
-- TOC entry 3036 (class 2606 OID 276176)
-- Name: fk_token_parent; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_token
    ADD CONSTRAINT fk_token_parent FOREIGN KEY (parent_) REFERENCES jbpm_token(id_);


--
-- TOC entry 3038 (class 2606 OID 276166)
-- Name: fk_token_procinst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_token
    ADD CONSTRAINT fk_token_procinst FOREIGN KEY (processinstance_) REFERENCES jbpm_processinstance(id_);


--
-- TOC entry 3039 (class 2606 OID 276161)
-- Name: fk_token_subpi; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_token
    ADD CONSTRAINT fk_token_subpi FOREIGN KEY (subprocessinstance_) REFERENCES jbpm_processinstance(id_);


--
-- TOC entry 3043 (class 2606 OID 276196)
-- Name: fk_trans_procdef; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_transition
    ADD CONSTRAINT fk_trans_procdef FOREIGN KEY (processdefinition_) REFERENCES jbpm_processdefinition(id_);


--
-- TOC entry 3044 (class 2606 OID 276191)
-- Name: fk_transition_from; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_transition
    ADD CONSTRAINT fk_transition_from FOREIGN KEY (from_) REFERENCES jbpm_node(id_);


--
-- TOC entry 3042 (class 2606 OID 276201)
-- Name: fk_transition_to; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_transition
    ADD CONSTRAINT fk_transition_to FOREIGN KEY (to_) REFERENCES jbpm_node(id_);


--
-- TOC entry 3021 (class 2606 OID 276116)
-- Name: fk_tsk_tskctrl; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_task
    ADD CONSTRAINT fk_tsk_tskctrl FOREIGN KEY (taskcontroller_) REFERENCES jbpm_taskcontroller(id_);


--
-- TOC entry 3028 (class 2606 OID 276126)
-- Name: fk_tskactpol_plact; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_taskactorpool
    ADD CONSTRAINT fk_tskactpol_plact FOREIGN KEY (pooledactor_) REFERENCES jbpm_pooledactor(id_);


--
-- TOC entry 3030 (class 2606 OID 276131)
-- Name: fk_tskctrl_deleg; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_taskcontroller
    ADD CONSTRAINT fk_tskctrl_deleg FOREIGN KEY (taskcontrollerdelegation_) REFERENCES jbpm_delegation(id_);


--
-- TOC entry 3000 (class 2606 OID 275986)
-- Name: fk_tskdef_start; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_moduledefinition
    ADD CONSTRAINT fk_tskdef_start FOREIGN KEY (starttask_) REFERENCES jbpm_task(id_);


--
-- TOC entry 3035 (class 2606 OID 276136)
-- Name: fk_tskins_prcins; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_taskinstance
    ADD CONSTRAINT fk_tskins_prcins FOREIGN KEY (procinst_) REFERENCES jbpm_processinstance(id_);


--
-- TOC entry 3048 (class 2606 OID 276241)
-- Name: fk_var_tskinst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_variableinstance
    ADD CONSTRAINT fk_var_tskinst FOREIGN KEY (taskinstance_) REFERENCES jbpm_taskinstance(id_);


--
-- TOC entry 3047 (class 2606 OID 276206)
-- Name: fk_varacc_procst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_variableaccess
    ADD CONSTRAINT fk_varacc_procst FOREIGN KEY (processstate_) REFERENCES jbpm_node(id_);


--
-- TOC entry 3046 (class 2606 OID 276211)
-- Name: fk_varacc_script; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_variableaccess
    ADD CONSTRAINT fk_varacc_script FOREIGN KEY (script_) REFERENCES jbpm_action(id_);


--
-- TOC entry 3045 (class 2606 OID 276216)
-- Name: fk_varacc_tskctrl; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_variableaccess
    ADD CONSTRAINT fk_varacc_tskctrl FOREIGN KEY (taskcontroller_) REFERENCES jbpm_taskcontroller(id_);


--
-- TOC entry 3052 (class 2606 OID 276221)
-- Name: fk_varinst_prcinst; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_variableinstance
    ADD CONSTRAINT fk_varinst_prcinst FOREIGN KEY (processinstance_) REFERENCES jbpm_processinstance(id_);


--
-- TOC entry 3050 (class 2606 OID 276231)
-- Name: fk_varinst_tk; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_variableinstance
    ADD CONSTRAINT fk_varinst_tk FOREIGN KEY (token_) REFERENCES jbpm_token(id_);


--
-- TOC entry 3051 (class 2606 OID 276226)
-- Name: fk_varinst_tkvarmp; Type: FK CONSTRAINT; Schema: public; Owner: bne_local
--

ALTER TABLE ONLY jbpm_variableinstance
    ADD CONSTRAINT fk_varinst_tkvarmp FOREIGN KEY (tokenvariablemap_) REFERENCES jbpm_tokenvariablemap(id_);


-- Completed on 2016-03-07 12:02:07 CET

--
-- PostgreSQL database dump complete
--
commit;
