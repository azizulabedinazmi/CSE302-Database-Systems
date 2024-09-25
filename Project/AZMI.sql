prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_default_workspace_id=>35383432320216087641
);
end;
/
prompt  WORKSPACE 35383432320216087641
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   16:47 Monday September 23, 2024
--   Exported By:     AZMI00121@GMAIL.COM
--   Export Type:     Workspace Export
--   Version:         24.1.3
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_240100
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>35383432320216087641);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace AZMI...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 35383590895848100627
 ,p_provisioning_company_id => 35383432320216087641
 ,p_short_name => 'AZMI'
 ,p_display_name => 'AZMI'
 ,p_first_schema_provisioned => 'WKSP_AZMI'
 ,p_company_schemas => 'WKSP_AZMI'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'AZMI'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'AZMI'
 ,p_files_version => 1
 ,p_is_extension_yn => 'N'
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1815043986472711,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1814950743472711,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1814853097472710,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '35383432256147087641',
  p_user_name                    => 'AZMI00121@GMAIL.COM',
  p_first_name                   => 'Azizul Abedin',
  p_last_name                    => 'Azmi',
  p_description                  => '',
  p_email_address                => 'azmi00121@gmail.com',
  p_web_password                 => '5AD105A56D07BAB500D1C23620F574057BD78F7751CB8059C2E52B8E5532A6304BAA6C5A0440BD134E243F13D16712513F25E57F3888306ADBEF25F69EAB92C4',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_AZMI',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202409071710','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_imp_workspace.create_password_history (
    p_id => 35383591025070100638,
    p_user_id => 35383432256147087641,
    p_password => 'C2D175ADE2F26209E4123ADFEAD1B66A86D17F6E2BCC6944A2B03D3F9BB5BD58AD77C50233A2F9D768CE20191BBF84A79218242CADAD4772B97BD78F27E7F010');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 35383635836470847296,
    p_user_id => 35383432256147087641,
    p_password => '5AD105A56D07BAB500D1C23620F574057BD78F7751CB8059C2E52B8E5532A6304BAA6C5A0440BD134E243F13D16712513F25E57F3888306ADBEF25F69EAB92C4');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 43620325569534556402,
    p_user_id => 'AZMI',
    p_preference_name => 'APEX_IG_42513207583289238735_CURRENT_REPORT',
    p_attribute_value => '42513208418823238736:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38370709198993534345,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP61693_P23_R38174400960773000853_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38258664620802699951,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P10021_W38174565104262001508',
    p_attribute_value => '38174571778304001523____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38363412830038692445,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P10022_W38174557662633001502',
    p_attribute_value => '38174562829409001507____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38362914501417392950,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P10033_W38174618848474001561',
    p_attribute_value => '38174628981060001570____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38259728311451703769,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P14_W38174337388482998828',
    p_attribute_value => '38174461806222000905____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39347472793060688154,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P14_W76678584560627127092',
    p_attribute_value => '76678708978366129169____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39350903994115719287,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P16_W76678601484263127599',
    p_attribute_value => '76678715979036129174____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39351279762502722268,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P18_W76678617835496128104',
    p_attribute_value => '76678724209792129181____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38504282697562133724,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P22_W76678652577543129120',
    p_attribute_value => '76678738515531129193____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42309141585987673067,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P26_W42309570119149973235',
    p_attribute_value => '42309141088327673058____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42311358072430727784,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P28_W42311353557109726629',
    p_attribute_value => '42311356876985727776____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38258844665334007776,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P2_W38174235660446995752',
    p_attribute_value => '38174412764521000865____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39340235650621899874,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P2_W76678482832591124016',
    p_attribute_value => '76678659936665129129____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 43620342604667560188,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P44_W42514353032171979117',
    p_attribute_value => '42515245545569281929____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 43621512054588562127,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P48_W42515857234676306834',
    p_attribute_value => '42516565774737006049____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39346627911731975900,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P4_W76678497158825124522',
    p_attribute_value => '76678665685584129134____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37646243089298714316,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'APEX_IG_5402528899234735_CURRENT_REPORT',
    p_attribute_value => '27818993000237613:ICON',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38294428885603629981,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'APEX_IG_665073618803777080_CURRENT_REPORT',
    p_attribute_value => '665079563548779201:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38346122806010348720,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'APEX_IG_9043595803647121_CURRENT_REPORT',
    p_attribute_value => '9480233238785954:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38115784009093139631,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'APEX_IG_9499495849275742_CURRENT_REPORT',
    p_attribute_value => '23204494782337413:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38185747777389172556,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'CODE_EDITOR_SETTINGS',
    p_attribute_value => '{"theme":"vs-dark","tabsInsertSpaces":true,"indentSize":"4","tabSize":"4","ruler":false,"minimap":"conditional","lineNumbers":true,"whitespace":false,"showSuggestions":true,"bracketPairColorization":false}',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38144205082459248994,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'CODE_LANGUAGE',
    p_attribute_value => 'PLSQL',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37312339122897850324,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'F4000_1157687726908338238_SPLITTER_STATE',
    p_attribute_value => '199:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37312814045719152117,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'F4000_203904827661009901_SPLITTER_STATE',
    p_attribute_value => '290:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37312339257427850325,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'F4000_203906404237009921_SPLITTER_STATE',
    p_attribute_value => '261:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38399220360777609959,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP4000_P4911_R52412001060114527_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42306620449318629721,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP4600_P1_R10424237842079440_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42306620322073629720,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP4600_P1_R15607707130231509_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42306620285590629719,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP4600_P1_R4876236258998332_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38173895711047700350,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38294288861775327879,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P405_W3852329031687921',
    p_attribute_value => '3853503855690337____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38179259088241768786,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P4070_W47949429235486335',
    p_attribute_value => '47951124794493113____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38256215733587661188,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P40_W48117227188266087',
    p_attribute_value => '48118623144274016____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38399137617062307875,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P4910_W3738700462051133',
    p_attribute_value => '3741124531126093____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38350230011050117396,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P546_W30205316146531602',
    p_attribute_value => '30206031208532453____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38292277372409557900,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_4350_P25_W9307709001462905',
    p_attribute_value => '9309908769463151____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37311873806686835116,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '1',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37312795237245150039,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'PD_GLV_HIDE_EMPTY',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37312330160319849225,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'PD_GLV_HIDE_GLOBAL',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37312805103069150833,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'PD_GLV_HIDE_LEGACY',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42567472684221079851,
    p_user_id => 'MRJ',
    p_preference_name => 'APEX_IG_42513207583289238735_CURRENT_REPORT',
    p_attribute_value => '42513208418823238736:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 43051158136139435880,
    p_user_id => 'MRJ',
    p_preference_name => 'FSP_IR_61693_P14_W76678584560627127092',
    p_attribute_value => '76678708978366129169____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 43551281277032093719,
    p_user_id => 'MRJ',
    p_preference_name => 'FSP_IR_61693_P18_W76678617835496128104',
    p_attribute_value => '76678724209792129181____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42468504575283942804,
    p_user_id => 'MRJ',
    p_preference_name => 'FSP_IR_61693_P22_W76678652577543129120',
    p_attribute_value => '76678738515531129193____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42654378018347288547,
    p_user_id => 'MRJ',
    p_preference_name => 'FSP_IR_61693_P28_W42311353557109726629',
    p_attribute_value => '42311356876985727776____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42567473769601080623,
    p_user_id => 'MRJ',
    p_preference_name => 'FSP_IR_61693_P38_W42513831455896947299',
    p_attribute_value => '42513926167731948705____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38212416704007526242,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_61693_P10_W38174306243427997804',
    p_attribute_value => '38174445412690000892____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38202886576598446744,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_61693_P12_W38174320912552998322',
    p_attribute_value => '38174454859443000900____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38504109169898830274,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_61693_P12_W76678568084697126586',
    p_attribute_value => '76678702031587129164____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39353014703450044636,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P10021_W76678812276406129772',
    p_attribute_value => '76678818950448129787____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38363682549292693046,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P10023_W38174543615844001490',
    p_attribute_value => '38174554321650001499____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38362900288052391679,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P10024_W38174532355422001479',
    p_attribute_value => '38174540372519001487____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39353405180177745237,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P10024_W76678779527566129743',
    p_attribute_value => '76678787544663129751____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39353407195996746186,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P10033_W76678866020618129825',
    p_attribute_value => '76678876153204129834____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38258823396094006668,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P10_W38174306243427997804',
    p_attribute_value => '38174445412690000892____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38258821292388006395,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P12_W38174320912552998322',
    p_attribute_value => '38174454859443000900____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39144505990598550841,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P10_W76678553415572126068',
    p_attribute_value => '76678692584834129156____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39347466948087687711,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P12_W76678568084697126586',
    p_attribute_value => '76678702031587129164____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39345886849913673455,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P6_W76678521731715125028',
    p_attribute_value => '76678673885147129141____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38258819857927005740,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P16_W38174354312118999335',
    p_attribute_value => '38174468806892000910____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38258803540798002874,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P18_W38174370663351999840',
    p_attribute_value => '38174477037648000917____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38258841325376007215,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P6_W38174274559570996764',
    p_attribute_value => '38174426713003000877____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38258828026186007006,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P8_W38174290034236997270',
    p_attribute_value => '38174437323223000886____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38258670508826700762,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P20_W38174384753243000340',
    p_attribute_value => '38174484366766000923____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38871162871945140236,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P20_W76678631925387128604',
    p_attribute_value => '76678731538910129187____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38192193925798979598,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P22_W38174405405399000856',
    p_attribute_value => '38174491343387000929____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 43620334956880558516,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P38_W42513831455896947299',
    p_attribute_value => '42513926167731948705____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38259736854850705766,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P4_W38174249986680996258',
    p_attribute_value => '38174418513440000870____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39347400295635683943,
    p_user_id => 'AZMI',
    p_preference_name => 'FSP_IR_61693_P8_W76678537206381125534',
    p_attribute_value => '76678684495367129150____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37887149264405781571,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'APEX$RDS_4500_1100_2000395581438701_active_tab',
    p_attribute_value => 'diagram',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38496458888281623260,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'APEX_IG_786390949359884461_CURRENT_REPORT',
    p_attribute_value => '786401902417889038:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38345144311503033963,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'APEX_IG_925260747421540222_CURRENT_REPORT',
    p_attribute_value => '2807177378527946:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38345144460307033978,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP4000_P267_R22486830752876187_SORT',
    p_attribute_value => 'sort_3_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38155000729209774713,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '297:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38179548891772074035,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P801_W47918412797645641',
    p_attribute_value => '47921608032702994____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38174806569865008109,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_61693_P22_W38174405405399000856',
    p_attribute_value => '38174491343387000929____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37299422625493681810,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '61693',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37299422194225681756,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38268422789845102241,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP4000_P197_R935666971301945228_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38179243400726766707,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38345144135721033733,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P260_W40585608941890825',
    p_attribute_value => '40587517034894377____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38346554860179045545,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P4003_W632908938554265910',
    p_attribute_value => '632910390117265918____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38253642987713617970,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P4110_W1548412223182178',
    p_attribute_value => '1550029190194632____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38399218137320608435,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P4850_W663191354226602129',
    p_attribute_value => '663193778295677089____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42316194259713091725,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_4350_P55_W10236304983033455',
    p_attribute_value => '10238325656034902____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38345137129598032605,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38180048106284778096,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'FSP_IR_61693_P20_W38174384753243000340',
    p_attribute_value => '38174484366766000923____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 35383841149251111643,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'PERSISTENT_ITEM_P1225_VIEW_MODE',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37882927694372666920,
    p_user_id => 'AZMI00121@GMAIL.COM',
    p_preference_name => 'PERSISTENT_ITEM_P25_DATE',
    p_attribute_value => '.125',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 43057093376971861021,
    p_user_id => 'MRJ',
    p_preference_name => 'FSP_IR_61693_P10_W76678553415572126068',
    p_attribute_value => '76678692584834129156____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 43050841000443432990,
    p_user_id => 'MRJ',
    p_preference_name => 'FSP_IR_61693_P12_W76678568084697126586',
    p_attribute_value => '76678702031587129164____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 43551275736117093325,
    p_user_id => 'MRJ',
    p_preference_name => 'FSP_IR_61693_P16_W76678601484263127599',
    p_attribute_value => '76678715979036129174____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42317070818512122173,
    p_user_id => 'MRJ',
    p_preference_name => 'FSP_IR_61693_P26_W42309570119149973235',
    p_attribute_value => '42309141088327673058____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42467585679430626395,
    p_user_id => 'MRJ',
    p_preference_name => 'FSP_IR_61693_P2_W76678482832591124016',
    p_attribute_value => '76678659936665129129____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42567306941409779526,
    p_user_id => 'MRJ',
    p_preference_name => 'FSP_IR_61693_P44_W42514353032171979117',
    p_attribute_value => '42515245545569281929____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42830429958764690896,
    p_user_id => 'MRJ',
    p_preference_name => 'FSP_IR_61693_P48_W42515857234676306834',
    p_attribute_value => '42516565774737006049____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42874514486075671458,
    p_user_id => 'MRJ',
    p_preference_name => 'FSP_IR_61693_P4_W76678497158825124522',
    p_attribute_value => '76678665685584129134____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 43057253369271558863,
    p_user_id => 'MRJ',
    p_preference_name => 'FSP_IR_61693_P6_W76678521731715125028',
    p_attribute_value => '76678673885147129141____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38504108788197830136,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_61693_P10_W76678553415572126068',
    p_attribute_value => '76678692584834129156____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38202875034000445232,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_61693_P14_W38174337388482998828',
    p_attribute_value => '38174461806222000905____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38202944601440452571,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_61693_P18_W38174370663351999840',
    p_attribute_value => '38174477037648000917____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38200148500972417212,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_61693_P20_W38174384753243000340',
    p_attribute_value => '38174484366766000923____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38202872806627444705,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_61693_P4_W38174249986680996258',
    p_attribute_value => '38174418513440000870____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38202872308218444550,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_61693_P8_W38174290034236997270',
    p_attribute_value => '38174437323223000886____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42801489385876363590,
    p_user_id => 'RAFI02',
    p_preference_name => 'FSP_IR_61693_P10_W76678553415572126068',
    p_attribute_value => '76678692584834129156____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42801957000577058574,
    p_user_id => 'RAFI02',
    p_preference_name => 'FSP_IR_61693_P12_W76678568084697126586',
    p_attribute_value => '76678702031587129164____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42287270675133284373,
    p_user_id => 'RAFI02',
    p_preference_name => 'FSP_IR_61693_P20_W76678631925387128604',
    p_attribute_value => '76678731538910129187____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42276518873051379071,
    p_user_id => 'RAFI02',
    p_preference_name => 'FSP_IR_61693_P22_W76678652577543129120',
    p_attribute_value => '76678738515531129193____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42276555767698386346,
    p_user_id => 'RAFI02',
    p_preference_name => 'FSP_IR_61693_P2_W76678482832591124016',
    p_attribute_value => '76678659936665129129____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42513926698402948713,
    p_user_id => 'RAFI02',
    p_preference_name => 'FSP_IR_61693_P38_W42513831455896947299',
    p_attribute_value => '42513926167731948705____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42515246015286281937,
    p_user_id => 'RAFI02',
    p_preference_name => 'FSP_IR_61693_P44_W42514353032171979117',
    p_attribute_value => '42515245545569281929____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42282295540278142033,
    p_user_id => 'RAFI02',
    p_preference_name => 'FSP_IR_61693_P4_W76678497158825124522',
    p_attribute_value => '76678665685584129134____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42609214503983517846,
    p_user_id => 'TANZILA',
    p_preference_name => 'APEX_IG_42513207583289238735_CURRENT_REPORT',
    p_attribute_value => '42513208418823238736:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38193569337379016677,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P10021_W38174565104262001508',
    p_attribute_value => '38174571778304001523____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38193578692185017527,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P10023_W38174543615844001490',
    p_attribute_value => '38174554321650001499____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38194248998378320317,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P10024_W38174532355422001479',
    p_attribute_value => '38174540372519001487____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39328944066065785108,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P16_W76678601484263127599',
    p_attribute_value => '76678715979036129174____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39328944579886785308,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P18_W76678617835496128104',
    p_attribute_value => '76678724209792129181____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42608539890318820683,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P38_W42513831455896947299',
    p_attribute_value => '42513926167731948705____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42608538428637820154,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P44_W42514353032171979117',
    p_attribute_value => '42515245545569281929____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39328939546279783142,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P6_W76678521731715125028',
    p_attribute_value => '76678673885147129141____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39327713905654482019,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P8_W76678537206381125534',
    p_attribute_value => '76678684495367129150____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38212103078628223150,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_61693_P16_W38174354312118999335',
    p_attribute_value => '38174468806892000910____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38201070467491422546,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_61693_P22_W38174405405399000856',
    p_attribute_value => '38174491343387000929____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42817425496798460917,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_61693_P38_W42513831455896947299',
    p_attribute_value => '42513926167731948705____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38202873416169444856,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_61693_P6_W38174274559570996764',
    p_attribute_value => '38174426713003000877____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42513214045657240144,
    p_user_id => 'RAFI02',
    p_preference_name => 'APEX_IG_42513207583289238735_CURRENT_REPORT',
    p_attribute_value => '42513208418823238736:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42513924115459948106,
    p_user_id => 'RAFI02',
    p_preference_name => 'FSP_IR_61693_P18_W76678617835496128104',
    p_attribute_value => '76678724209792129181____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42516566293961006058,
    p_user_id => 'RAFI02',
    p_preference_name => 'FSP_IR_61693_P48_W42515857234676306834',
    p_attribute_value => '42516565774737006049____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42287425547663575206,
    p_user_id => 'RAFI02',
    p_preference_name => 'FSP_IR_61693_P6_W76678521731715125028',
    p_attribute_value => '76678673885147129141____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42297303202481462320,
    p_user_id => 'RAFI02',
    p_preference_name => 'FSP_IR_61693_P8_W76678537206381125534',
    p_attribute_value => '76678684495367129150____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38671548590572587854,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P10_W76678553415572126068',
    p_attribute_value => '76678692584834129156____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39328943746324784657,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P12_W76678568084697126586',
    p_attribute_value => '76678702031587129164____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39327718191396483110,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P14_W76678584560627127092',
    p_attribute_value => '76678708978366129169____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39327719249473483711,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P20_W76678631925387128604',
    p_attribute_value => '76678731538910129187____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38193537493829016022,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P22_W38174405405399000856',
    p_attribute_value => '38174491343387000929____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39328968340926787337,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P22_W76678652577543129120',
    p_attribute_value => '76678738515531129193____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42608530198004819143,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P26_W42309570119149973235',
    p_attribute_value => '42309141088327673058____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 42608536340348819506,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P28_W42311353557109726629',
    p_attribute_value => '42311356876985727776____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38671543106977586621,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P2_W76678482832591124016',
    p_attribute_value => '76678659936665129129____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 39327711261093480312,
    p_user_id => 'TANZILA',
    p_preference_name => 'FSP_IR_61693_P4_W76678497158825124522',
    p_attribute_value => '76678665685584129134____',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '0D0A0D0A2F2A0D0A44524F50205441424C452046696E616E6369616C5F5472616E73616374696F6E733B0D0A44524F50205441424C4520466C696768745F5374617475733B0D0A44524F50205441424C45205061796D656E74733B0D0A44524F50205441';
wwv_flow_imp.g_varchar2_table(2) := '424C4520466C696768745F437265773B0D0A44524F50205441424C4520437265773B0D0A44524F50205441424C4520426F6F6B696E67733B0D0A44524F50205441424C452050617373656E676572733B0D0A44524F50205441424C4520466C6967687473';
wwv_flow_imp.g_varchar2_table(3) := '3B0D0A44524F50205441424C4520416972706F7274733B0D0A44524F50205441424C45204169726C696E65733B0D0A44524F50205441424C452055736572733B0D0A0D0A204E6F6E2D64656661756C74206F7074696F6E733A0D0A232073657474696E67';
wwv_flow_imp.g_varchar2_table(4) := '73203D207B2261706578223A2259222C226462223A22313963222C22706B223A224944454E54495459227D0D0A0D0A2A2F';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 37928542455466639028,
    p_flow_id => 4500,
    p_name => '37928542455466639028/a',
    p_pathid => null,
    p_filename => 'a',
    p_title => 'a',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'AZMI00121@GMAIL.COM',
    p_created_on => to_date('202409121854','YYYYMMDDHH24MI'),
    p_updated_by => 'AZMI00121@GMAIL.COM',
    p_updated_on => to_date('202409221855','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 37928938381571337510,
    p_file_id => 37928542455466639028,
    p_job_id => null,
    p_run_by => 'AZMI00121@GMAIL.COM',
    p_run_as => 'WKSP_AZMI',
    p_started => to_date('202409121854','YYYYMMDDHH24MI'),
    p_start_time => 34337511,
    p_ended => to_date('202409121854','YYYYMMDDHH24MI'),
    p_end_time => 34337544,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 37928938485886337511
    ,p_result_id => 37928938381571337510
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 1
    ,p_stmt_num => 3
 ,p_stmt_text => 
'create table "DROP TABLE Financial_Transactions;" (     id    number generated by default on null as identity           constraint "DROP TABLE Financial_Transactions;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_start_time => 34337511
    ,p_ended => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_end_time => 34337516
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409121854','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 37928938597291337516
    ,p_result_id => 37928938381571337510
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 2
    ,p_stmt_num => 8
 ,p_stmt_text => 
'create table "DROP TABLE Flight_Status;" (     id    number generated by default on null as identity           constraint "DROP TABLE Flight_Status;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_start_time => 34337516
    ,p_ended => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_end_time => 34337518
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409121854','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 37928938653396337518
    ,p_result_id => 37928938381571337510
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 3
    ,p_stmt_num => 13
 ,p_stmt_text => 
'create table "DROP TABLE Payments;" (     id    number generated by default on null as identity           constraint "DROP TABLE Payments;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_start_time => 34337518
    ,p_ended => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_end_time => 34337521
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409121854','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 37928938760336337521
    ,p_result_id => 37928938381571337510
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 4
    ,p_stmt_num => 18
 ,p_stmt_text => 
'create table "DROP TABLE Flight_Crew;" (     id    number generated by default on null as identity           constraint "DROP TABLE Flight_Crew;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_start_time => 34337521
    ,p_ended => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_end_time => 34337524
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409121854','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 37928938856688337524
    ,p_result_id => 37928938381571337510
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 5
    ,p_stmt_num => 23
 ,p_stmt_text => 
'create table "DROP TABLE Crew;" (     id    number generated by default on null as identity           constraint "DROP TABLE Crew;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_start_time => 34337524
    ,p_ended => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_end_time => 34337526
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409121854','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 37928939115882337533
    ,p_result_id => 37928938381571337510
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 8
    ,p_stmt_num => 38
 ,p_stmt_text => 
'create table "DROP TABLE Flights;" (     id    number generated by default on null as identity           constraint "DROP TABLE Flights;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_start_time => 34337533
    ,p_ended => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_end_time => 34337535
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409121854','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 37928939267584337536
    ,p_result_id => 37928938381571337510
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 9
    ,p_stmt_num => 43
 ,p_stmt_text => 
'create table "DROP TABLE Airports;" (     id    number generated by default on null as identity           constraint "DROP TABLE Airports;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_start_time => 34337536
    ,p_ended => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_end_time => 34337538
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409121854','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 37928939398279337538
    ,p_result_id => 37928938381571337510
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 10
    ,p_stmt_num => 48
 ,p_stmt_text => 
'create table "DROP TABLE Airlines;" (     id    number generated by default on null as identity           constraint "DROP TABLE Airlines;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_start_time => 34337538
    ,p_ended => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_end_time => 34337541
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409121854','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 37928939408237337541
    ,p_result_id => 37928938381571337510
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 11
    ,p_stmt_num => 53
 ,p_stmt_text => 
'create table "DROP TABLE Users;" (     id    number generated by default on null as identity           constraint "DROP TABLE Users;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_start_time => 34337541
    ,p_ended => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_end_time => 34337544
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409121854','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 37928939058560337529
    ,p_result_id => 37928938381571337510
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 7
    ,p_stmt_num => 33
 ,p_stmt_text => 
'create table "DROP TABLE Passengers;" (     id    number generated by default on null as identity           constraint "DROP TABLE Passengers;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_start_time => 34337529
    ,p_ended => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_end_time => 34337532
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409121854','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 37928938909558337527
    ,p_result_id => 37928938381571337510
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 6
    ,p_stmt_num => 28
 ,p_stmt_text => 
'create table "DROP TABLE Bookings;" (     id    number generated by default on null as identity           constraint "DROP TABLE Bookings;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_start_time => 34337527
    ,p_ended => to_date('202409121854','YYYYMMDDHH24MI')
    ,p_end_time => 34337529
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409121854','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 38148348890006359607,
    p_file_id => 37928542455466639028,
    p_job_id => null,
    p_run_by => 'AZMI00121@GMAIL.COM',
    p_run_as => 'WKSP_AZMI',
    p_started => to_date('202409130851','YYYYMMDDHH24MI'),
    p_start_time => 39359608,
    p_ended => to_date('202409130851','YYYYMMDDHH24MI'),
    p_end_time => 39359638,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148348912896359608
    ,p_result_id => 38148348890006359607
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 1
    ,p_stmt_num => 3
 ,p_stmt_text => 
'create table "DROP TABLE Financial_Transactions;" (     id    number generated by default on null as identity           constraint "DROP TABLE Financial_Transactions;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39359608
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39359612
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148349011158359612
    ,p_result_id => 38148348890006359607
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 2
    ,p_stmt_num => 8
 ,p_stmt_text => 
'create table "DROP TABLE Flight_Status;" (     id    number generated by default on null as identity           constraint "DROP TABLE Flight_Status;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39359612
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39359615
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148349174471359615
    ,p_result_id => 38148348890006359607
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 3
    ,p_stmt_num => 13
 ,p_stmt_text => 
'create table "DROP TABLE Payments;" (     id    number generated by default on null as identity           constraint "DROP TABLE Payments;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39359615
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39359617
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148349212309359617
    ,p_result_id => 38148348890006359607
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 4
    ,p_stmt_num => 18
 ,p_stmt_text => 
'create table "DROP TABLE Flight_Crew;" (     id    number generated by default on null as identity           constraint "DROP TABLE Flight_Crew;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39359617
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39359619
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148349321226359620
    ,p_result_id => 38148348890006359607
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 5
    ,p_stmt_num => 23
 ,p_stmt_text => 
'create table "DROP TABLE Crew;" (     id    number generated by default on null as identity           constraint "DROP TABLE Crew;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39359620
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39359622
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148349421901359622
    ,p_result_id => 38148348890006359607
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 6
    ,p_stmt_num => 28
 ,p_stmt_text => 
'create table "DROP TABLE Bookings;" (     id    number generated by default on null as identity           constraint "DROP TABLE Bookings;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39359622
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39359624
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148349596726359624
    ,p_result_id => 38148348890006359607
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 7
    ,p_stmt_num => 33
 ,p_stmt_text => 
'create table "DROP TABLE Passengers;" (     id    number generated by default on null as identity           constraint "DROP TABLE Passengers;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39359624
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39359627
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148349631683359627
    ,p_result_id => 38148348890006359607
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 8
    ,p_stmt_num => 38
 ,p_stmt_text => 
'create table "DROP TABLE Flights;" (     id    number generated by default on null as identity           constraint "DROP TABLE Flights;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39359627
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39359630
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148349747997359630
    ,p_result_id => 38148348890006359607
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 9
    ,p_stmt_num => 43
 ,p_stmt_text => 
'create table "DROP TABLE Airports;" (     id    number generated by default on null as identity           constraint "DROP TABLE Airports;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39359630
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39359633
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148349808299359633
    ,p_result_id => 38148348890006359607
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 10
    ,p_stmt_num => 48
 ,p_stmt_text => 
'create table "DROP TABLE Airlines;" (     id    number generated by default on null as identity           constraint "DROP TABLE Airlines;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39359633
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39359635
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148349930089359636
    ,p_result_id => 38148348890006359607
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 11
    ,p_stmt_num => 53
 ,p_stmt_text => 
'create table "DROP TABLE Users;" (     id    number generated by default on null as identity           constraint "DROP TABLE Users;_id_pk" primary key )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39359636
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39359638
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 38148447436596663133,
    p_file_id => 37928542455466639028,
    p_job_id => null,
    p_run_by => 'AZMI00121@GMAIL.COM',
    p_run_as => 'WKSP_AZMI',
    p_started => to_date('202409130851','YYYYMMDDHH24MI'),
    p_start_time => 39663134,
    p_ended => to_date('202409130851','YYYYMMDDHH24MI'),
    p_end_time => 39663139,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148447567784663134
    ,p_result_id => 38148447436596663133
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 1
    ,p_stmt_num => 3
 ,p_stmt_text => 
'create table "DROP TABLE Financial_Transactions;" (     id    number generated by default on null as identity           constraint "DROP TABLE Financial_Transactions;_id_pk" primary key )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39663134
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39663135
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148447667523663135
    ,p_result_id => 38148447436596663133
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 2
    ,p_stmt_num => 8
 ,p_stmt_text => 
'create table "DROP TABLE Flight_Status;" (     id    number generated by default on null as identity           constraint "DROP TABLE Flight_Status;_id_pk" primary key )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39663135
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39663136
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148447705295663136
    ,p_result_id => 38148447436596663133
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 3
    ,p_stmt_num => 13
 ,p_stmt_text => 
'create table "DROP TABLE Payments;" (     id    number generated by default on null as identity           constraint "DROP TABLE Payments;_id_pk" primary key )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39663136
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39663136
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148447808330663136
    ,p_result_id => 38148447436596663133
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 4
    ,p_stmt_num => 18
 ,p_stmt_text => 
'create table "DROP TABLE Flight_Crew;" (     id    number generated by default on null as identity           constraint "DROP TABLE Flight_Crew;_id_pk" primary key )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39663136
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39663136
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148447921395663136
    ,p_result_id => 38148447436596663133
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 5
    ,p_stmt_num => 23
 ,p_stmt_text => 
'create table "DROP TABLE Crew;" (     id    number generated by default on null as identity           constraint "DROP TABLE Crew;_id_pk" primary key )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39663136
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39663137
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148448079720663137
    ,p_result_id => 38148447436596663133
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 6
    ,p_stmt_num => 28
 ,p_stmt_text => 
'create table "DROP TABLE Bookings;" (     id    number generated by default on null as identity           constraint "DROP TABLE Bookings;_id_pk" primary key )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39663137
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39663137
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148448144934663137
    ,p_result_id => 38148447436596663133
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 7
    ,p_stmt_num => 33
 ,p_stmt_text => 
'create table "DROP TABLE Passengers;" (     id    number generated by default on null as identity           constraint "DROP TABLE Passengers;_id_pk" primary key )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39663137
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39663138
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148448253717663138
    ,p_result_id => 38148447436596663133
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 8
    ,p_stmt_num => 38
 ,p_stmt_text => 
'create table "DROP TABLE Flights;" (     id    number generated by default on null as identity           constraint "DROP TABLE Flights;_id_pk" primary key )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39663138
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39663138
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148448306661663138
    ,p_result_id => 38148447436596663133
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 9
    ,p_stmt_num => 43
 ,p_stmt_text => 
'create table "DROP TABLE Airports;" (     id    number generated by default on null as identity           constraint "DROP TABLE Airports;_id_pk" primary key )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39663138
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39663138
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148448431999663138
    ,p_result_id => 38148447436596663133
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 10
    ,p_stmt_num => 48
 ,p_stmt_text => 
'create table "DROP TABLE Airlines;" (     id    number generated by default on null as identity           constraint "DROP TABLE Airlines;_id_pk" primary key )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39663138
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39663139
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38148448507709663139
    ,p_result_id => 38148447436596663133
    ,p_file_id => 37928542455466639028
    ,p_seq_id => 11
    ,p_stmt_num => 53
 ,p_stmt_text => 
'create table "DROP TABLE Users;" (     id    number generated by default on null as identity           constraint "DROP TABLE Users;_id_pk" primary key )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_start_time => 39663139
    ,p_ended => to_date('202409130851','YYYYMMDDHH24MI')
    ,p_end_time => 39663139
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130851','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '435245415445205441424C4520757365727333280D0A20202020757365725F696420494E54204E4F54204E554C4C2C0D0A20202020757365725F6E616D6520564152434841523228363429204E4F54204E554C4C2C0D0A20202020757365725F70617373';
wwv_flow_imp.g_varchar2_table(2) := '20564152434841523228333229204E4F54204E554C4C2C0D0A20202020757365725F726F6C6C20564152434841523228333029204E4F54204E554C4C2C0D0A20202020757365725F616374697661746564206E756D6265722064656661756C7420302C0D';
wwv_flow_imp.g_varchar2_table(3) := '0A202020205052494D415259204B455928757365725F6964290D0A293B0D0A494E5345525420494E544F207573657273332056414C55455328312C27617A6D69272C27617A6D6930303740402323272C2761646D696E272C273127293B0D0A0D0A0D0A0D';
wwv_flow_imp.g_varchar2_table(4) := '0A0D0A435245415445205441424C45204169726C696E657320280D0A202020206169726C696E655F696420494E54205052494D415259204B45592C0D0A202020206169726C696E655F6E616D6520564152434841522831303029204E4F54204E554C4C2C';
wwv_flow_imp.g_varchar2_table(5) := '0D0A202020206169726C696E655F636F6465205641524348415228313029204E4F54204E554C4C0D0A293B0D0A0D0A0D0A0D0A435245415445204F52205245504C4143452054524947474552206169726C696E655F69645F747269676765720D0A424546';
wwv_flow_imp.g_varchar2_table(6) := '4F524520494E53455254204F4E204169726C696E65730D0A464F52204541434820524F570D0A424547494E0D0A2020202053454C454354206169726C696E655F7365712E4E45585456414C20494E544F203A4E45572E6169726C696E655F69642046524F';
wwv_flow_imp.g_varchar2_table(7) := '4D206475616C3B0D0A454E443B0D0A2F0D0A0D0A494E5345525420494E544F204169726C696E65732056414C5545532028312C2027416D65726963616E204169726C696E6573272C2027414127293B0D0A494E5345525420494E544F204169726C696E65';
wwv_flow_imp.g_varchar2_table(8) := '732056414C5545532028322C202744656C7461204169726C696E6573272C2027444C27293B0D0A494E5345525420494E544F204169726C696E65732056414C5545532028332C2027556E69746564204169726C696E6573272C2027554127293B0D0A494E';
wwv_flow_imp.g_varchar2_table(9) := '5345525420494E544F204169726C696E65732056414C5545532028342C2027536F75746877657374204169726C696E6573272C2027574E27293B0D0A494E5345525420494E544F204169726C696E65732056414C5545532028352C20274A6574426C7565';
wwv_flow_imp.g_varchar2_table(10) := '2041697277617973272C2027423627293B0D0A494E5345525420494E544F204169726C696E65732056414C5545532028362C2027416C61736B61204169726C696E6573272C2027415327293B0D0A494E5345525420494E544F204169726C696E65732056';
wwv_flow_imp.g_varchar2_table(11) := '414C5545532028372C2027537069726974204169726C696E6573272C20274E4B27293B0D0A494E5345525420494E544F204169726C696E65732056414C5545532028382C202746726F6E74696572204169726C696E6573272C2027463927293B0D0A494E';
wwv_flow_imp.g_varchar2_table(12) := '5345525420494E544F204169726C696E65732056414C5545532028392C2027486177616969616E204169726C696E6573272C2027484127293B0D0A494E5345525420494E544F204169726C696E65732056414C554553202831302C2027416C6C65676961';
wwv_flow_imp.g_varchar2_table(13) := '6E7420416972272C2027473427293B0D0A0D0A0D0A435245415445205441424C4520416972706F72747320280D0A20202020616972706F72745F696420494E54205052494D415259204B45592C0D0A20202020616972706F72745F6E616D652056415243';
wwv_flow_imp.g_varchar2_table(14) := '4841522831303029204E4F54204E554C4C2C0D0A20202020616972706F72745F636F6465205641524348415228313029204E4F54204E554C4C2C0D0A20202020636974792056415243484152283530292C0D0A20202020636F756E747279205641524348';
wwv_flow_imp.g_varchar2_table(15) := '4152283530290D0A293B0D0A494E5345525420494E544F20416972706F7274732056414C5545532028312C20274A6F686E20462E204B656E6E65647920496E7465726E6174696F6E616C20416972706F7274272C20274A464B272C20274E657720596F72';
wwv_flow_imp.g_varchar2_table(16) := '6B272C202755534127293B0D0A494E5345525420494E544F20416972706F7274732056414C5545532028322C20274C6F7320416E67656C657320496E7465726E6174696F6E616C20416972706F7274272C20274C4158272C20274C6F7320416E67656C65';
wwv_flow_imp.g_varchar2_table(17) := '73272C202755534127293B0D0A494E5345525420494E544F20416972706F7274732056414C5545532028332C20274C6F6E646F6E204865617468726F7720416972706F7274272C20274C4852272C20274C6F6E646F6E272C2027554B27293B0D0A494E53';
wwv_flow_imp.g_varchar2_table(18) := '45525420494E544F20416972706F7274732056414C5545532028342C2027546F6B796F2048616E65646120416972706F7274272C2027484E44272C2027546F6B796F272C20274A6170616E27293B0D0A494E5345525420494E544F20416972706F727473';
wwv_flow_imp.g_varchar2_table(19) := '2056414C5545532028352C2027447562616920496E7465726E6174696F6E616C20416972706F7274272C2027445842272C20274475626169272C202755414527293B0D0A494E5345525420494E544F20416972706F7274732056414C5545532028362C20';
wwv_flow_imp.g_varchar2_table(20) := '27506172697320436861726C6573206465204761756C6C6520416972706F7274272C2027434447272C20275061726973272C20274672616E636527293B0D0A494E5345525420494E544F20416972706F7274732056414C5545532028372C20274672616E';
wwv_flow_imp.g_varchar2_table(21) := '6B6675727420416972706F7274272C2027465241272C20274672616E6B66757274272C20274765726D616E7927293B0D0A494E5345525420494E544F20416972706F7274732056414C5545532028382C202753696E6761706F7265204368616E67692041';
wwv_flow_imp.g_varchar2_table(22) := '6972706F7274272C202753494E272C202753696E6761706F7265272C202753696E6761706F726527293B0D0A494E5345525420494E544F20416972706F7274732056414C5545532028392C20275379646E6579204B696E6773666F726420536D69746820';
wwv_flow_imp.g_varchar2_table(23) := '416972706F7274272C2027535944272C20275379646E6579272C20274175737472616C696127293B0D0A494E5345525420494E544F20416972706F7274732056414C554553202831302C2027546F726F6E746F2050656172736F6E20496E7465726E6174';
wwv_flow_imp.g_varchar2_table(24) := '696F6E616C20416972706F7274272C202759595A272C2027546F726F6E746F272C202743616E61646127293B0D0A0D0A0D0A435245415445204F52205245504C414345205452494747455220616972706F72745F69645F747269676765720D0A4245464F';
wwv_flow_imp.g_varchar2_table(25) := '524520494E53455254204F4E20416972706F7274730D0A464F52204541434820524F570D0A424547494E0D0A2020202053454C45435420616972706F72745F7365712E4E45585456414C20494E544F203A4E45572E616972706F72745F69642046524F4D';
wwv_flow_imp.g_varchar2_table(26) := '206475616C3B0D0A454E443B0D0A2F0D0A0D0A0D0A0D0A435245415445205441424C4520466C696768747320280D0A20202020666C696768745F696420494E54205052494D415259204B45592C0D0A202020206169726C696E655F696420494E542C0D0A';
wwv_flow_imp.g_varchar2_table(27) := '202020206465706172747572655F616972706F72745F696420494E542C0D0A202020206172726976616C5F616972706F72745F696420494E542C0D0A20202020666C696768745F6E756D6265722056415243484152283130292C0D0A2020202064657061';
wwv_flow_imp.g_varchar2_table(28) := '72747572655F74696D652054494D455354414D502C0D0A202020206172726976616C5F74696D652054494D455354414D502C0D0A20202020464F524549474E204B455920286169726C696E655F696429205245464552454E434553204169726C696E6573';
wwv_flow_imp.g_varchar2_table(29) := '286169726C696E655F6964292C0D0A20202020464F524549474E204B455920286465706172747572655F616972706F72745F696429205245464552454E43455320416972706F72747328616972706F72745F6964292C0D0A20202020464F524549474E20';
wwv_flow_imp.g_varchar2_table(30) := '4B455920286172726976616C5F616972706F72745F696429205245464552454E43455320416972706F72747328616972706F72745F6964290D0A293B0D0A0D0A0D0A435245415445204F52205245504C414345205452494747455220666C696768745F69';
wwv_flow_imp.g_varchar2_table(31) := '645F747269676765720D0A4245464F524520494E53455254204F4E20466C69676874730D0A464F52204541434820524F570D0A424547494E0D0A2020202053454C45435420666C696768745F7365712E4E45585456414C20494E544F203A4E45572E666C';
wwv_flow_imp.g_varchar2_table(32) := '696768745F69642046524F4D206475616C3B0D0A454E443B0D0A2F0D0A0D0A0D0A435245415445205441424C452050617373656E6765727320280D0A2020202070617373656E6765725F696420494E54205052494D415259204B45592C0D0A2020202066';
wwv_flow_imp.g_varchar2_table(33) := '697273745F6E616D652056415243484152283530292C0D0A202020206C6173745F6E616D652056415243484152283530292C0D0A2020202070617373706F72745F6E756D6265722056415243484152283230292C0D0A202020206E6174696F6E616C6974';
wwv_flow_imp.g_varchar2_table(34) := '792056415243484152283530290D0A293B0D0A494E5345525420494E544F2050617373656E67657273202870617373656E6765725F69642C2066697273745F6E616D652C206C6173745F6E616D652C2070617373706F72745F6E756D6265722C206E6174';
wwv_flow_imp.g_varchar2_table(35) := '696F6E616C697479290D0A56414C5545532028312C20274A6F686E272C2027446F65272C20275031323334353637272C202755534127293B0D0A494E5345525420494E544F2050617373656E67657273202870617373656E6765725F69642C2066697273';
wwv_flow_imp.g_varchar2_table(36) := '745F6E616D652C206C6173745F6E616D652C2070617373706F72745F6E756D6265722C206E6174696F6E616C697479290D0A56414C5545532028322C20274A616E65272C2027536D697468272C20275032333435363738272C2027554B27293B0D0A494E';
wwv_flow_imp.g_varchar2_table(37) := '5345525420494E544F2050617373656E67657273202870617373656E6765725F69642C2066697273745F6E616D652C206C6173745F6E616D652C2070617373706F72745F6E756D6265722C206E6174696F6E616C697479290D0A56414C5545532028332C';
wwv_flow_imp.g_varchar2_table(38) := '2027416C696365272C20274A6F686E736F6E272C20275033343536373839272C202743616E61646127293B0D0A494E5345525420494E544F2050617373656E67657273202870617373656E6765725F69642C2066697273745F6E616D652C206C6173745F';
wwv_flow_imp.g_varchar2_table(39) := '6E616D652C2070617373706F72745F6E756D6265722C206E6174696F6E616C697479290D0A56414C5545532028342C2027426F62272C202742726F776E272C20275034353637383930272C20274175737472616C696127293B0D0A494E5345525420494E';
wwv_flow_imp.g_varchar2_table(40) := '544F2050617373656E67657273202870617373656E6765725F69642C2066697273745F6E616D652C206C6173745F6E616D652C2070617373706F72745F6E756D6265722C206E6174696F6E616C697479290D0A56414C5545532028352C2027436861726C';
wwv_flow_imp.g_varchar2_table(41) := '6965272C20274461766973272C20275035363738393031272C20274E6577205A65616C616E6427293B0D0A494E5345525420494E544F2050617373656E67657273202870617373656E6765725F69642C2066697273745F6E616D652C206C6173745F6E61';
wwv_flow_imp.g_varchar2_table(42) := '6D652C2070617373706F72745F6E756D6265722C206E6174696F6E616C697479290D0A56414C5545532028362C20274469616E61272C20274576616E73272C20275036373839303132272C2027536F7574682041667269636127293B0D0A494E53455254';
wwv_flow_imp.g_varchar2_table(43) := '20494E544F2050617373656E67657273202870617373656E6765725F69642C2066697273745F6E616D652C206C6173745F6E616D652C2070617373706F72745F6E756D6265722C206E6174696F6E616C697479290D0A56414C5545532028372C20274574';
wwv_flow_imp.g_varchar2_table(44) := '68616E272C2027466F73746572272C20275037383930313233272C20274972656C616E6427293B0D0A494E5345525420494E544F2050617373656E67657273202870617373656E6765725F69642C2066697273745F6E616D652C206C6173745F6E616D65';
wwv_flow_imp.g_varchar2_table(45) := '2C2070617373706F72745F6E756D6265722C206E6174696F6E616C697479290D0A56414C5545532028382C202746696F6E61272C2027476172636961272C20275038393031323334272C2027537061696E27293B0D0A494E5345525420494E544F205061';
wwv_flow_imp.g_varchar2_table(46) := '7373656E67657273202870617373656E6765725F69642C2066697273745F6E616D652C206C6173745F6E616D652C2070617373706F72745F6E756D6265722C206E6174696F6E616C697479290D0A56414C5545532028392C202747656F726765272C2027';
wwv_flow_imp.g_varchar2_table(47) := '486172726973272C20275039303132333435272C20274765726D616E7927293B0D0A494E5345525420494E544F2050617373656E67657273202870617373656E6765725F69642C2066697273745F6E616D652C206C6173745F6E616D652C207061737370';
wwv_flow_imp.g_varchar2_table(48) := '6F72745F6E756D6265722C206E6174696F6E616C697479290D0A56414C554553202831302C202748616E6E6168272C20274962726168696D272C20275030313233343536272C202755414527293B0D0A0D0A0D0A435245415445204F52205245504C4143';
wwv_flow_imp.g_varchar2_table(49) := '4520545249474745522070617373656E6765725F69645F747269676765720D0A4245464F524520494E53455254204F4E2050617373656E676572730D0A464F52204541434820524F570D0A424547494E0D0A2020202053454C4543542070617373656E67';
wwv_flow_imp.g_varchar2_table(50) := '65725F7365712E4E45585456414C20494E544F203A4E45572E70617373656E6765725F69642046524F4D206475616C3B0D0A454E443B0D0A2F0D0A0D0A0D0A0D0A435245415445205441424C4520426F6F6B696E677320280D0A20202020626F6F6B696E';
wwv_flow_imp.g_varchar2_table(51) := '675F696420494E54205052494D415259204B45592C0D0A20202020666C696768745F696420494E542C0D0A2020202070617373656E6765725F696420494E542C0D0A20202020626F6F6B696E675F646174652054494D455354414D502C0D0A2020202073';
wwv_flow_imp.g_varchar2_table(52) := '6561745F636C6173732056415243484152283230292C0D0A20202020707269636520444543494D414C2831302C2032292C0D0A20202020464F524549474E204B45592028666C696768745F696429205245464552454E43455320466C696768747328666C';
wwv_flow_imp.g_varchar2_table(53) := '696768745F6964292C0D0A20202020464F524549474E204B4559202870617373656E6765725F696429205245464552454E4345532050617373656E676572732870617373656E6765725F6964290D0A293B0D0A435245415445204F52205245504C414345';
wwv_flow_imp.g_varchar2_table(54) := '205452494747455220626F6F6B696E675F69645F747269676765720D0A4245464F524520494E53455254204F4E20426F6F6B696E67730D0A464F52204541434820524F570D0A424547494E0D0A2020202053454C45435420626F6F6B696E675F7365712E';
wwv_flow_imp.g_varchar2_table(55) := '4E45585456414C20494E544F203A4E45572E626F6F6B696E675F69642046524F4D206475616C3B0D0A454E443B0D0A2F0D0A0D0A0D0A0D0A435245415445205441424C45204372657720280D0A20202020637265775F696420494E54205052494D415259';
wwv_flow_imp.g_varchar2_table(56) := '204B45592C0D0A2020202066697273745F6E616D652056415243484152283530292C0D0A202020206C6173745F6E616D652056415243484152283530292C0D0A20202020726F6C652056415243484152283530290D0A293B0D0A494E5345525420494E54';
wwv_flow_imp.g_varchar2_table(57) := '4F20437265772028637265775F69642C2066697273745F6E616D652C206C6173745F6E616D652C20726F6C65292056414C5545532028312C2027546F6D272C20274A6F686E736F6E272C202750696C6F7427293B0D0A494E5345525420494E544F204372';
wwv_flow_imp.g_varchar2_table(58) := '65772028637265775F69642C2066697273745F6E616D652C206C6173745F6E616D652C20726F6C65292056414C5545532028322C20275361726168272C20274C6565272C2027466C6967687420417474656E64616E7427293B0D0A494E5345525420494E';
wwv_flow_imp.g_varchar2_table(59) := '544F20437265772028637265775F69642C2066697273745F6E616D652C206C6173745F6E616D652C20726F6C65292056414C5545532028332C20274D69636861656C272C2027536D697468272C2027436F2D50696C6F7427293B0D0A494E534552542049';
wwv_flow_imp.g_varchar2_table(60) := '4E544F20437265772028637265775F69642C2066697273745F6E616D652C206C6173745F6E616D652C20726F6C65292056414C5545532028342C2027456D696C79272C20274461766973272C2027466C6967687420417474656E64616E7427293B0D0A49';
wwv_flow_imp.g_varchar2_table(61) := '4E5345525420494E544F20437265772028637265775F69642C2066697273745F6E616D652C206C6173745F6E616D652C20726F6C65292056414C5545532028352C20274A616D6573272C202742726F776E272C202750696C6F7427293B0D0A494E534552';
wwv_flow_imp.g_varchar2_table(62) := '5420494E544F20437265772028637265775F69642C2066697273745F6E616D652C206C6173745F6E616D652C20726F6C65292056414C5545532028362C20274A657373696361272C202757696C736F6E272C2027466C6967687420417474656E64616E74';
wwv_flow_imp.g_varchar2_table(63) := '27293B0D0A494E5345525420494E544F20437265772028637265775F69642C2066697273745F6E616D652C206C6173745F6E616D652C20726F6C65292056414C5545532028372C20274461766964272C20275461796C6F72272C2027436F2D50696C6F74';
wwv_flow_imp.g_varchar2_table(64) := '27293B0D0A494E5345525420494E544F20437265772028637265775F69642C2066697273745F6E616D652C206C6173745F6E616D652C20726F6C65292056414C5545532028382C20274C61757261272C2027416E646572736F6E272C2027466C69676874';
wwv_flow_imp.g_varchar2_table(65) := '20417474656E64616E7427293B0D0A494E5345525420494E544F20437265772028637265775F69642C2066697273745F6E616D652C206C6173745F6E616D652C20726F6C65292056414C5545532028392C2027526F62657274272C202754686F6D617327';
wwv_flow_imp.g_varchar2_table(66) := '2C202750696C6F7427293B0D0A494E5345525420494E544F20437265772028637265775F69642C2066697273745F6E616D652C206C6173745F6E616D652C20726F6C65292056414C554553202831302C2027416E6E61272C20274D6F6F7265272C202746';
wwv_flow_imp.g_varchar2_table(67) := '6C6967687420417474656E64616E7427293B0D0A0D0A0D0A435245415445204F52205245504C414345205452494747455220637265775F69645F747269676765720D0A4245464F524520494E53455254204F4E20437265770D0A464F5220454143482052';
wwv_flow_imp.g_varchar2_table(68) := '4F570D0A424547494E0D0A202020203A4E45572E637265775F6964203A3D20637265775F7365712E4E45585456414C3B0D0A454E443B0D0A2F0D0A0D0A0D0A0D0A435245415445205441424C4520466C696768745F4372657720280D0A20202020666C69';
wwv_flow_imp.g_varchar2_table(69) := '6768745F696420494E542C0D0A20202020637265775F696420494E542C0D0A2020202066697273745F6E616D652056415243484152283530292C0D0A20202020726F6C652056415243484152283530292C0D0A20202020464F524549474E204B45592028';
wwv_flow_imp.g_varchar2_table(70) := '666C696768745F696429205245464552454E43455320466C696768747328666C696768745F696429204F4E2044454C45544520434153434144452C0D0A20202020464F524549474E204B45592028637265775F696429205245464552454E434553204372';
wwv_flow_imp.g_varchar2_table(71) := '657728637265775F696429204F4E2044454C45544520434153434144452C0D0A202020205052494D415259204B45592028666C696768745F69642C20637265775F6964290D0A293B0D0A0D0A435245415445204F52205245504C41434520545249474745';
wwv_flow_imp.g_varchar2_table(72) := '5220666C696768745F637265775F62695F747269676765720D0A4245464F524520494E53455254204F4E20466C696768745F437265770D0A464F52204541434820524F570D0A424547494E0D0A2020202053454C4543542066697273745F6E616D652C20';
wwv_flow_imp.g_varchar2_table(73) := '726F6C6520494E544F203A4E45572E66697273745F6E616D652C203A4E45572E726F6C652046524F4D204372657720574845524520637265775F6964203D203A4E45572E637265775F69643B0D0A454E443B0D0A2F0D0A0D0A0D0A0D0A43524541544520';
wwv_flow_imp.g_varchar2_table(74) := '5441424C45205061796D656E747320280D0A202020207061796D656E745F696420494E54205052494D415259204B45592C0D0A20202020626F6F6B696E675F696420494E542C0D0A202020207061796D656E745F646174652054494D455354414D502C0D';
wwv_flow_imp.g_varchar2_table(75) := '0A20202020616D6F756E7420444543494D414C2831302C2032292C0D0A202020207061796D656E745F6D6574686F642056415243484152283230292C0D0A20202020464F524549474E204B45592028626F6F6B696E675F696429205245464552454E4345';
wwv_flow_imp.g_varchar2_table(76) := '5320426F6F6B696E677328626F6F6B696E675F6964290D0A293B0D0A435245415445204F52205245504C4143452054524947474552207061796D656E745F69645F747269676765720D0A4245464F524520494E53455254204F4E205061796D656E74730D';
wwv_flow_imp.g_varchar2_table(77) := '0A464F52204541434820524F570D0A424547494E0D0A2020202053454C454354207061796D656E745F7365712E4E45585456414C20494E544F203A4E45572E7061796D656E745F69642046524F4D206475616C3B0D0A454E443B0D0A2F0D0A0D0A0D0A0D';
wwv_flow_imp.g_varchar2_table(78) := '0A435245415445205441424C4520466C696768745F53746174757320280D0A202020207374617475735F696420494E54205052494D415259204B45592C0D0A20202020666C696768745F696420494E542C0D0A2020202073746174757320564152434841';
wwv_flow_imp.g_varchar2_table(79) := '52283230292C0D0A20202020757064617465645F74696D652054494D455354414D502C0D0A20202020464F524549474E204B45592028666C696768745F696429205245464552454E43455320466C696768747328666C696768745F6964290D0A293B0D0A';
wwv_flow_imp.g_varchar2_table(80) := '435245415445204F52205245504C414345205452494747455220666C696768745F7374617475735F69645F747269676765720D0A4245464F524520494E53455254204F4E20466C696768745F5374617475730D0A464F52204541434820524F570D0A4245';
wwv_flow_imp.g_varchar2_table(81) := '47494E0D0A2020202053454C45435420666C696768745F7374617475735F7365712E4E45585456414C20494E544F203A4E45572E7374617475735F69642046524F4D206475616C3B0D0A454E443B0D0A2F0D0A0D0A0D0A0D0A435245415445205441424C';
wwv_flow_imp.g_varchar2_table(82) := '452046696E616E6369616C5F5472616E73616374696F6E7320280D0A202020207472616E73616374696F6E5F696420494E54205052494D415259204B45592C0D0A202020207472616E73616374696F6E5F747970652056415243484152283530292C0D0A';
wwv_flow_imp.g_varchar2_table(83) := '20202020616D6F756E7420444543494D414C2831302C2032292C0D0A202020207472616E73616374696F6E5F646174652054494D455354414D500D0A293B0D0A494E5345525420494E544F2046696E616E6369616C5F5472616E73616374696F6E732028';
wwv_flow_imp.g_varchar2_table(84) := '7472616E73616374696F6E5F69642C207472616E73616374696F6E5F747970652C20616D6F756E742C207472616E73616374696F6E5F64617465292056414C5545532028312C20275469636B65742053616C65272C203530302E30302C20544F5F54494D';
wwv_flow_imp.g_varchar2_table(85) := '455354414D502827323032342D30382D30312031323A30303A3030272C2027595959592D4D4D2D444420484832343A4D493A53532729293B0D0A494E5345525420494E544F2046696E616E6369616C5F5472616E73616374696F6E7320287472616E7361';
wwv_flow_imp.g_varchar2_table(86) := '6374696F6E5F69642C207472616E73616374696F6E5F747970652C20616D6F756E742C207472616E73616374696F6E5F64617465292056414C5545532028322C20275469636B65742053616C65272C20313530302E30302C20544F5F54494D455354414D';
wwv_flow_imp.g_varchar2_table(87) := '502827323032342D30382D30352031343A30303A3030272C2027595959592D4D4D2D444420484832343A4D493A53532729293B0D0A494E5345525420494E544F2046696E616E6369616C5F5472616E73616374696F6E7320287472616E73616374696F6E';
wwv_flow_imp.g_varchar2_table(88) := '5F69642C207472616E73616374696F6E5F747970652C20616D6F756E742C207472616E73616374696F6E5F64617465292056414C5545532028332C20275469636B65742053616C65272C20323530302E30302C20544F5F54494D455354414D5028273230';
wwv_flow_imp.g_varchar2_table(89) := '32342D30382D31302031363A30303A3030272C2027595959592D4D4D2D444420484832343A4D493A53532729293B0D0A494E5345525420494E544F2046696E616E6369616C5F5472616E73616374696F6E7320287472616E73616374696F6E5F69642C20';
wwv_flow_imp.g_varchar2_table(90) := '7472616E73616374696F6E5F747970652C20616D6F756E742C207472616E73616374696F6E5F64617465292056414C5545532028342C20275469636B65742053616C65272C203630302E30302C20544F5F54494D455354414D502827323032342D30382D';
wwv_flow_imp.g_varchar2_table(91) := '31352031383A30303A3030272C2027595959592D4D4D2D444420484832343A4D493A53532729293B0D0A494E5345525420494E544F2046696E616E6369616C5F5472616E73616374696F6E7320287472616E73616374696F6E5F69642C207472616E7361';
wwv_flow_imp.g_varchar2_table(92) := '6374696F6E5F747970652C20616D6F756E742C207472616E73616374696F6E5F64617465292056414C5545532028352C20275469636B65742053616C65272C20313630302E30302C20544F5F54494D455354414D502827323032342D30382D3230203230';
wwv_flow_imp.g_varchar2_table(93) := '3A30303A3030272C2027595959592D4D4D2D444420484832343A4D493A53532729293B0D0A494E5345525420494E544F2046696E616E6369616C5F5472616E73616374696F6E7320287472616E73616374696F6E5F69642C207472616E73616374696F6E';
wwv_flow_imp.g_varchar2_table(94) := '5F747970652C20616D6F756E742C207472616E73616374696F6E5F64617465292056414C5545532028362C20275469636B65742053616C65272C20323630302E30302C20544F5F54494D455354414D502827323032342D30382D32352032323A30303A30';
wwv_flow_imp.g_varchar2_table(95) := '30272C2027595959592D4D4D2D444420484832343A4D493A53532729293B0D0A494E5345525420494E544F2046696E616E6369616C5F5472616E73616374696F6E7320287472616E73616374696F6E5F69642C207472616E73616374696F6E5F74797065';
wwv_flow_imp.g_varchar2_table(96) := '2C20616D6F756E742C207472616E73616374696F6E5F64617465292056414C5545532028372C20275469636B65742053616C65272C203730302E30302C20544F5F54494D455354414D502827323032342D30382D33302031303A30303A3030272C202759';
wwv_flow_imp.g_varchar2_table(97) := '5959592D4D4D2D444420484832343A4D493A53532729293B0D0A494E5345525420494E544F2046696E616E6369616C5F5472616E73616374696F6E7320287472616E73616374696F6E5F69642C207472616E73616374696F6E5F747970652C20616D6F75';
wwv_flow_imp.g_varchar2_table(98) := '6E742C207472616E73616374696F6E5F64617465292056414C5545532028382C20275469636B65742053616C65272C20313730302E30302C20544F5F54494D455354414D502827323032342D30392D30312031323A30303A3030272C2027595959592D4D';
wwv_flow_imp.g_varchar2_table(99) := '4D2D444420484832343A4D493A53532729293B0D0A494E5345525420494E544F2046696E616E6369616C5F5472616E73616374696F6E7320287472616E73616374696F6E5F69642C207472616E73616374696F6E5F747970652C20616D6F756E742C2074';
wwv_flow_imp.g_varchar2_table(100) := '72616E73616374696F6E5F64617465292056414C5545532028392C20275469636B65742053616C65272C20323730302E30302C20544F5F54494D455354414D502827323032342D30392D30352031343A30303A3030272C2027595959592D4D4D2D444420';
wwv_flow_imp.g_varchar2_table(101) := '484832343A4D493A53532729293B0D0A494E5345525420494E544F2046696E616E6369616C5F5472616E73616374696F6E7320287472616E73616374696F6E5F69642C207472616E73616374696F6E5F747970652C20616D6F756E742C207472616E7361';
wwv_flow_imp.g_varchar2_table(102) := '6374696F6E5F64617465292056414C554553202831302C20275469636B65742053616C65272C203830302E30302C20544F5F54494D455354414D502827323032342D30392D31302031363A30303A3030272C2027595959592D4D4D2D444420484832343A';
wwv_flow_imp.g_varchar2_table(103) := '4D493A53532729293B0D0A0D0A0D0A435245415445204F52205245504C41434520545249474745522066696E616E6369616C5F7472616E73616374696F6E5F69645F747269676765720D0A4245464F524520494E53455254204F4E2046696E616E636961';
wwv_flow_imp.g_varchar2_table(104) := '6C5F5472616E73616374696F6E730D0A464F52204541434820524F570D0A424547494E0D0A2020202053454C4543542066696E616E6369616C5F7472616E73616374696F6E5F7365712E4E45585456414C20494E544F203A4E45572E7472616E73616374';
wwv_flow_imp.g_varchar2_table(105) := '696F6E5F69642046524F4D206475616C3B0D0A454E443B0D0A2F0D0A0D0A0D0A434F4D4D49543B0D0A';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 38139561311026183622,
    p_flow_id => 4500,
    p_name => '38139561311026183622/test',
    p_pathid => null,
    p_filename => 'test',
    p_title => 'test',
    p_mime_type => 'application/octet-stream',
    p_dad_charset => 'UTF-8',
    p_created_by => 'AZMI00121@GMAIL.COM',
    p_created_on => to_date('202409130822','YYYYMMDDHH24MI'),
    p_updated_by => 'AZMI00121@GMAIL.COM',
    p_updated_on => to_date('202409130945','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172461166632982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 2
    ,p_src_line_number => 8
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172461362400982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 4
    ,p_src_line_number => 9
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172461907048982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 10
    ,p_src_line_number => 18
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172462623131982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 15
    ,p_src_line_number => 28
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172462844716982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 18
    ,p_src_line_number => 30
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172463013575982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 20
    ,p_src_line_number => 31
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172463221431982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 22
    ,p_src_line_number => 32
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172463416573982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 24
    ,p_src_line_number => 33
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172463659856982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 26
    ,p_src_line_number => 34
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172463847012982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 28
    ,p_src_line_number => 35
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172464013103982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 30
    ,p_src_line_number => 36
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172464241430982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 32
    ,p_src_line_number => 37
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172464475196982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 34
    ,p_src_line_number => 38
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172464618834982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 36
    ,p_src_line_number => 39
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172465480316982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 40
    ,p_src_line_number => 48
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172465611177982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 42
    ,p_src_line_number => 49
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172465812951982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 44
    ,p_src_line_number => 50
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172466020496982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 46
    ,p_src_line_number => 51
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172466215453982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 48
    ,p_src_line_number => 52
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172466498948982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 50
    ,p_src_line_number => 53
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172466692644982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 52
    ,p_src_line_number => 54
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172466837647982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 54
    ,p_src_line_number => 55
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172467031054982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 56
    ,p_src_line_number => 56
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172467283678982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 58
    ,p_src_line_number => 57
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172467478469982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 60
    ,p_src_line_number => 58
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172468198027982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 64
    ,p_src_line_number => 67
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172469413761982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 69
    ,p_src_line_number => 82
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172470108362982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 73
    ,p_src_line_number => 91
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172470954412982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 77
    ,p_src_line_number => 100
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172471260161982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 79
    ,p_src_line_number => 102
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172471535085982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 81
    ,p_src_line_number => 104
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172471884168982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 83
    ,p_src_line_number => 106
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172472168102982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 85
    ,p_src_line_number => 108
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172472409078982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 87
    ,p_src_line_number => 110
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172472744537982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 89
    ,p_src_line_number => 112
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172473038847982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 91
    ,p_src_line_number => 114
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172473398324982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 93
    ,p_src_line_number => 116
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172473671845982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 95
    ,p_src_line_number => 118
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172473902363982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 97
    ,p_src_line_number => 120
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172474682452982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 101
    ,p_src_line_number => 129
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172475744528982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 106
    ,p_src_line_number => 142
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172477512518982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 117
    ,p_src_line_number => 160
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172476405201982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 108
    ,p_src_line_number => 149
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172477177343982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 113
    ,p_src_line_number => 158
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172477361842982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 115
    ,p_src_line_number => 159
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172477704247982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 119
    ,p_src_line_number => 161
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172477939592982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 121
    ,p_src_line_number => 162
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172478112496982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 123
    ,p_src_line_number => 163
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172478340612982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 125
    ,p_src_line_number => 164
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172478590910982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 127
    ,p_src_line_number => 165
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172478793916982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 129
    ,p_src_line_number => 166
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172478993033982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 131
    ,p_src_line_number => 167
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172479152957982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 133
    ,p_src_line_number => 168
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172479879904982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 137
    ,p_src_line_number => 177
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172480803432982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 142
    ,p_src_line_number => 189
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172481526102982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 145
    ,p_src_line_number => 197
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172482465970982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 150
    ,p_src_line_number => 208
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172483171346982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 152
    ,p_src_line_number => 215
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172485515249982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 166
    ,p_src_line_number => 242
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172483912479982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 157
    ,p_src_line_number => 225
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172484616078982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 159
    ,p_src_line_number => 232
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172485396794982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 164
    ,p_src_line_number => 241
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172485772814982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 168
    ,p_src_line_number => 243
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172485959074982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 170
    ,p_src_line_number => 244
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172486131299982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 172
    ,p_src_line_number => 245
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172486304002982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 174
    ,p_src_line_number => 246
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172486592872982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 176
    ,p_src_line_number => 247
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172486774518982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 178
    ,p_src_line_number => 248
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172486908041982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 180
    ,p_src_line_number => 249
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172487127965982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 182
    ,p_src_line_number => 250
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172487307998982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 184
    ,p_src_line_number => 251
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172488038322982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 188
    ,p_src_line_number => 260
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172488273637982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 192
    ,p_src_line_number => 263
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172488177057982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 191
    ,p_src_line_number => 263
    ,p_offset => 10433
    ,p_length => 6
    ,p_stmt_class => 2
    ,p_stmt_id => 21
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'COMMIT'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172460346613982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE users3( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172460478117982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 23
    ,p_length => 26
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    user_id INT NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172460545970982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 50
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    user_name VARCHAR2(64) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172460646519982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 88
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    user_pass VARCHAR2(32) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172460779274982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 126
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    user_roll VARCHAR2(30) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172460817797982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 164
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    user_activated number default 0, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172460919906982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 202
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    PRIMARY KEY(user_id) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172461060678982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 1
    ,p_src_line_number => 8
    ,p_offset => 228
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172461447658982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 9
    ,p_src_line_number => 14
    ,p_offset => 304
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE Airlines ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172461582839982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 9
    ,p_src_line_number => 15
    ,p_offset => 329
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    airline_id INT PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172461623605982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 9
    ,p_src_line_number => 16
    ,p_offset => 362
    ,p_length => 40
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    airline_name VARCHAR(100) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172461762206982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 9
    ,p_src_line_number => 17
    ,p_offset => 403
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    airline_code VARCHAR(10) NOT NULL '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172461842749982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 9
    ,p_src_line_number => 18
    ,p_offset => 442
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172464719248982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 39
    ,p_src_line_number => 42
    ,p_offset => 1222
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE Airports ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172464831935982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 39
    ,p_src_line_number => 43
    ,p_offset => 1247
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    airport_id INT PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172464911002982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 39
    ,p_src_line_number => 44
    ,p_offset => 1280
    ,p_length => 40
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    airport_name VARCHAR(100) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172465009053982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 39
    ,p_src_line_number => 45
    ,p_offset => 1321
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    airport_code VARCHAR(10) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172465196984982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 39
    ,p_src_line_number => 46
    ,p_offset => 1361
    ,p_length => 22
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    city VARCHAR(50), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172465239087982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 39
    ,p_src_line_number => 47
    ,p_offset => 1384
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    country VARCHAR(50) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172465355322982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 39
    ,p_src_line_number => 48
    ,p_offset => 1409
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172468233279982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 68
    ,p_src_line_number => 71
    ,p_offset => 2524
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE Flights ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172468391698982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 68
    ,p_src_line_number => 72
    ,p_offset => 2548
    ,p_length => 31
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    flight_id INT PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172468456970982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 68
    ,p_src_line_number => 73
    ,p_offset => 2580
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    airline_id INT, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172468518375982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 68
    ,p_src_line_number => 74
    ,p_offset => 2601
    ,p_length => 30
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    departure_airport_id INT, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172468643720982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 68
    ,p_src_line_number => 75
    ,p_offset => 2632
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    arrival_airport_id INT, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172468750398982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 68
    ,p_src_line_number => 76
    ,p_offset => 2661
    ,p_length => 31
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    flight_number VARCHAR(10), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172468835068982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 68
    ,p_src_line_number => 77
    ,p_offset => 2693
    ,p_length => 30
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    departure_time TIMESTAMP, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172468992456982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 68
    ,p_src_line_number => 78
    ,p_offset => 2724
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    arrival_time TIMESTAMP, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172469017865982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 68
    ,p_src_line_number => 79
    ,p_offset => 2753
    ,p_length => 62
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    FOREIGN KEY (airline_id) REFERENCES Airlines(airline_id), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172469153545982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 68
    ,p_src_line_number => 80
    ,p_offset => 2816
    ,p_length => 72
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    FOREIGN KEY (departure_airport_id) REFERENCES Airports(airport_id), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172469236422982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 68
    ,p_src_line_number => 81
    ,p_offset => 2889
    ,p_length => 69
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    FOREIGN KEY (arrival_airport_id) REFERENCES Airports(airport_id) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172469334831982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 68
    ,p_src_line_number => 82
    ,p_offset => 2959
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172470253584982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 76
    ,p_src_line_number => 94
    ,p_offset => 3134
    ,p_length => 26
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE Passengers ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172470347746982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 76
    ,p_src_line_number => 95
    ,p_offset => 3161
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    passenger_id INT PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172470428573982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 76
    ,p_src_line_number => 96
    ,p_offset => 3196
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    first_name VARCHAR(50), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172470530847982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 76
    ,p_src_line_number => 97
    ,p_offset => 3225
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    last_name VARCHAR(50), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172470606681982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 76
    ,p_src_line_number => 98
    ,p_offset => 3253
    ,p_length => 33
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    passport_number VARCHAR(20), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172470769144982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 76
    ,p_src_line_number => 99
    ,p_offset => 3287
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    nationality VARCHAR(50) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172470852328982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 76
    ,p_src_line_number => 100
    ,p_offset => 3316
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172474707153982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 105
    ,p_src_line_number => 133
    ,p_offset => 4966
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE Bookings ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172474831860982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 105
    ,p_src_line_number => 134
    ,p_offset => 4991
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    booking_id INT PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172474905187982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 105
    ,p_src_line_number => 135
    ,p_offset => 5024
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    flight_id INT, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172475062603982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 105
    ,p_src_line_number => 136
    ,p_offset => 5044
    ,p_length => 22
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    passenger_id INT, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172475197806982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 105
    ,p_src_line_number => 137
    ,p_offset => 5067
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    booking_date TIMESTAMP, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172475281626982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 105
    ,p_src_line_number => 138
    ,p_offset => 5096
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    seat_class VARCHAR(20), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172475336923982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 105
    ,p_src_line_number => 139
    ,p_offset => 5125
    ,p_length => 26
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    price DECIMAL(10, 2), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172475441342982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 105
    ,p_src_line_number => 140
    ,p_offset => 5152
    ,p_length => 59
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172475521084982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 105
    ,p_src_line_number => 141
    ,p_offset => 5212
    ,p_length => 67
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172475633802982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 105
    ,p_src_line_number => 142
    ,p_offset => 5280
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172476507266982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 112
    ,p_src_line_number => 153
    ,p_offset => 5457
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE Crew ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172476649987982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 112
    ,p_src_line_number => 154
    ,p_offset => 5478
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    crew_id INT PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172476754653982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 112
    ,p_src_line_number => 155
    ,p_offset => 5508
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    first_name VARCHAR(50), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172476885276982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 112
    ,p_src_line_number => 156
    ,p_offset => 5537
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    last_name VARCHAR(50), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172476908604982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 112
    ,p_src_line_number => 157
    ,p_offset => 5565
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    role VARCHAR(50) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172477034782982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 112
    ,p_src_line_number => 158
    ,p_offset => 5587
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172479994459982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 141
    ,p_src_line_number => 181
    ,p_offset => 6766
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE Flight_Crew ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172480066486982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 141
    ,p_src_line_number => 182
    ,p_offset => 6794
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    flight_id INT, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172480167096982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 141
    ,p_src_line_number => 183
    ,p_offset => 6814
    ,p_length => 17
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    crew_id INT, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172480266253982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 141
    ,p_src_line_number => 184
    ,p_offset => 6832
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    first_name VARCHAR(50), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172480338430982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 141
    ,p_src_line_number => 185
    ,p_offset => 6861
    ,p_length => 22
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    role VARCHAR(50), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172480456209982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 141
    ,p_src_line_number => 186
    ,p_offset => 6884
    ,p_length => 77
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id) ON DELETE CASCADE, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172480546278982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 141
    ,p_src_line_number => 187
    ,p_offset => 6962
    ,p_length => 70
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    FOREIGN KEY (crew_id) REFERENCES Crew(crew_id) ON DELETE CASCADE, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172480692538982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 141
    ,p_src_line_number => 188
    ,p_offset => 7033
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    PRIMARY KEY (flight_id, crew_id) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172480711087982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 141
    ,p_src_line_number => 189
    ,p_offset => 7071
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172481665154982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 149
    ,p_src_line_number => 201
    ,p_offset => 7294
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE Payments ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172481724346982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 149
    ,p_src_line_number => 202
    ,p_offset => 7319
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    payment_id INT PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172481854034982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 149
    ,p_src_line_number => 203
    ,p_offset => 7352
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    booking_id INT, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172481917413982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 149
    ,p_src_line_number => 204
    ,p_offset => 7373
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    payment_date TIMESTAMP, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172482050465982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 149
    ,p_src_line_number => 205
    ,p_offset => 7402
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    amount DECIMAL(10, 2), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172482197781982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 149
    ,p_src_line_number => 206
    ,p_offset => 7430
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    payment_method VARCHAR(20), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172482273677982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 149
    ,p_src_line_number => 207
    ,p_offset => 7463
    ,p_length => 61
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172482330257982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 149
    ,p_src_line_number => 208
    ,p_offset => 7525
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172483212250982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 156
    ,p_src_line_number => 219
    ,p_offset => 7702
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE Flight_Status ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172483392310982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 156
    ,p_src_line_number => 220
    ,p_offset => 7732
    ,p_length => 31
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    status_id INT PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172483424754982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 156
    ,p_src_line_number => 221
    ,p_offset => 7764
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    flight_id INT, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172483597070982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 156
    ,p_src_line_number => 222
    ,p_offset => 7784
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    status VARCHAR(20), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172483624326982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 156
    ,p_src_line_number => 223
    ,p_offset => 7809
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    updated_time TIMESTAMP, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172483783609982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 156
    ,p_src_line_number => 224
    ,p_offset => 7838
    ,p_length => 58
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172483878906982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 156
    ,p_src_line_number => 225
    ,p_offset => 7897
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172484772139982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 163
    ,p_src_line_number => 236
    ,p_offset => 8090
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE Financial_Transactions ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172484831154982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 163
    ,p_src_line_number => 237
    ,p_offset => 8129
    ,p_length => 36
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    transaction_id INT PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172484987563982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 163
    ,p_src_line_number => 238
    ,p_offset => 8166
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    transaction_type VARCHAR(50), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172485012903982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 163
    ,p_src_line_number => 239
    ,p_offset => 8201
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    amount DECIMAL(10, 2), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172485197825982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 163
    ,p_src_line_number => 240
    ,p_offset => 8229
    ,p_length => 31
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    transaction_date TIMESTAMP '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172485296809982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 163
    ,p_src_line_number => 241
    ,p_offset => 8261
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172462092769982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 14
    ,p_src_line_number => 22
    ,p_offset => 452
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TRIGGER airline_id_trigger '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172462118578982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 14
    ,p_src_line_number => 23
    ,p_offset => 498
    ,p_length => 26
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEFORE INSERT ON Airlines '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172462235553982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 14
    ,p_src_line_number => 24
    ,p_offset => 525
    ,p_length => 13
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'FOR EACH ROW '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172462300001982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 14
    ,p_src_line_number => 25
    ,p_offset => 539
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172462474665982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 14
    ,p_src_line_number => 26
    ,p_offset => 546
    ,p_length => 63
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    SELECT airline_seq.NEXTVAL INTO :NEW.airline_id FROM dual; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172462500277982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 14
    ,p_src_line_number => 27
    ,p_offset => 610
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172467548356982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 63
    ,p_src_line_number => 61
    ,p_offset => 2351
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TRIGGER airport_id_trigger '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172467604326982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 63
    ,p_src_line_number => 62
    ,p_offset => 2397
    ,p_length => 26
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEFORE INSERT ON Airports '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172467740487982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 63
    ,p_src_line_number => 63
    ,p_offset => 2424
    ,p_length => 13
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'FOR EACH ROW '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172467894415982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 63
    ,p_src_line_number => 64
    ,p_offset => 2438
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172467923839982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 63
    ,p_src_line_number => 65
    ,p_offset => 2445
    ,p_length => 63
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    SELECT airport_seq.NEXTVAL INTO :NEW.airport_id FROM dual; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172468044067982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 63
    ,p_src_line_number => 66
    ,p_offset => 2509
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172469580392982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 72
    ,p_src_line_number => 85
    ,p_offset => 2967
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TRIGGER flight_id_trigger '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172469609436982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 72
    ,p_src_line_number => 86
    ,p_offset => 3012
    ,p_length => 25
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEFORE INSERT ON Flights '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172469731347982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 72
    ,p_src_line_number => 87
    ,p_offset => 3038
    ,p_length => 13
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'FOR EACH ROW '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172469857340982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 72
    ,p_src_line_number => 88
    ,p_offset => 3052
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172469917486982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 72
    ,p_src_line_number => 89
    ,p_offset => 3059
    ,p_length => 61
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    SELECT flight_seq.NEXTVAL INTO :NEW.flight_id FROM dual; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172470067028982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 72
    ,p_src_line_number => 90
    ,p_offset => 3121
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172474009664982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 100
    ,p_src_line_number => 123
    ,p_offset => 4785
    ,p_length => 47
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TRIGGER passenger_id_trigger '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172474172853982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 100
    ,p_src_line_number => 124
    ,p_offset => 4833
    ,p_length => 28
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEFORE INSERT ON Passengers '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172474269921982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 100
    ,p_src_line_number => 125
    ,p_offset => 4862
    ,p_length => 13
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'FOR EACH ROW '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172474328192982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 100
    ,p_src_line_number => 126
    ,p_offset => 4876
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172474459750982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 100
    ,p_src_line_number => 127
    ,p_offset => 4883
    ,p_length => 67
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    SELECT passenger_seq.NEXTVAL INTO :NEW.passenger_id FROM dual; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172474589420982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 100
    ,p_src_line_number => 128
    ,p_offset => 4951
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172475854061982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 107
    ,p_src_line_number => 143
    ,p_offset => 5284
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TRIGGER booking_id_trigger '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172475967553982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 107
    ,p_src_line_number => 144
    ,p_offset => 5330
    ,p_length => 26
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEFORE INSERT ON Bookings '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172476012409982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 107
    ,p_src_line_number => 145
    ,p_offset => 5357
    ,p_length => 13
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'FOR EACH ROW '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172476122570982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 107
    ,p_src_line_number => 146
    ,p_offset => 5371
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172476262510982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 107
    ,p_src_line_number => 147
    ,p_offset => 5378
    ,p_length => 63
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    SELECT booking_seq.NEXTVAL INTO :NEW.booking_id FROM dual; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172476332768982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 107
    ,p_src_line_number => 148
    ,p_offset => 5442
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172479201928982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 136
    ,p_src_line_number => 171
    ,p_offset => 6625
    ,p_length => 42
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TRIGGER crew_id_trigger '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172479398235982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 136
    ,p_src_line_number => 172
    ,p_offset => 6668
    ,p_length => 22
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEFORE INSERT ON Crew '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172479452812982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 136
    ,p_src_line_number => 173
    ,p_offset => 6691
    ,p_length => 13
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'FOR EACH ROW '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172479557112982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 136
    ,p_src_line_number => 174
    ,p_offset => 6705
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172479633607982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 136
    ,p_src_line_number => 175
    ,p_offset => 6712
    ,p_length => 38
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    :NEW.crew_id := crew_seq.NEXTVAL; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172479790949982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 136
    ,p_src_line_number => 176
    ,p_offset => 6751
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172480909486982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 144
    ,p_src_line_number => 191
    ,p_offset => 7077
    ,p_length => 49
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TRIGGER flight_crew_bi_trigger '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172481081382982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 144
    ,p_src_line_number => 192
    ,p_offset => 7127
    ,p_length => 29
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEFORE INSERT ON Flight_Crew '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172481169626982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 144
    ,p_src_line_number => 193
    ,p_offset => 7157
    ,p_length => 13
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'FOR EACH ROW '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172481242639982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 144
    ,p_src_line_number => 194
    ,p_offset => 7171
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172481325940982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 144
    ,p_src_line_number => 195
    ,p_offset => 7178
    ,p_length => 100
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    SELECT first_name, role INTO :NEW.first_name, :NEW.role FROM Crew WHERE crew_id = :NEW.crew_id; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172481451915982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 144
    ,p_src_line_number => 196
    ,p_offset => 7279
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172482552310982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 151
    ,p_src_line_number => 209
    ,p_offset => 7529
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TRIGGER payment_id_trigger '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172482638428982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 151
    ,p_src_line_number => 210
    ,p_offset => 7575
    ,p_length => 26
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEFORE INSERT ON Payments '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172482763413982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 151
    ,p_src_line_number => 211
    ,p_offset => 7602
    ,p_length => 13
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'FOR EACH ROW '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172482895272982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 151
    ,p_src_line_number => 212
    ,p_offset => 7616
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172482976615982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 151
    ,p_src_line_number => 213
    ,p_offset => 7623
    ,p_length => 63
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    SELECT payment_seq.NEXTVAL INTO :NEW.payment_id FROM dual; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172483006433982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 151
    ,p_src_line_number => 214
    ,p_offset => 7687
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172484410522982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 158
    ,p_src_line_number => 230
    ,p_offset => 8006
    ,p_length => 68
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    SELECT flight_status_seq.NEXTVAL INTO :NEW.status_id FROM dual; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172484548030982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 158
    ,p_src_line_number => 231
    ,p_offset => 8075
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172484069981982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 158
    ,p_src_line_number => 226
    ,p_offset => 7901
    ,p_length => 51
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TRIGGER flight_status_id_trigger '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172484136785982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 158
    ,p_src_line_number => 227
    ,p_offset => 7953
    ,p_length => 31
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEFORE INSERT ON Flight_Status '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172484209370982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 158
    ,p_src_line_number => 228
    ,p_offset => 7985
    ,p_length => 13
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'FOR EACH ROW '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172484341703982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 158
    ,p_src_line_number => 229
    ,p_offset => 7999
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172487430489982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 187
    ,p_src_line_number => 254
    ,p_offset => 10216
    ,p_length => 59
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TRIGGER financial_transaction_id_trigger '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172487574853982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 187
    ,p_src_line_number => 255
    ,p_offset => 10276
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEFORE INSERT ON Financial_Transactions '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172487600145982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 187
    ,p_src_line_number => 256
    ,p_offset => 10317
    ,p_length => 13
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'FOR EACH ROW '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172487746810982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 187
    ,p_src_line_number => 257
    ,p_offset => 10331
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172487803167982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 187
    ,p_src_line_number => 258
    ,p_offset => 10338
    ,p_length => 81
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    SELECT financial_transaction_seq.NEXTVAL INTO :NEW.transaction_id FROM dual; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172487928948982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 187
    ,p_src_line_number => 259
    ,p_offset => 10420
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172461234119982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 3
    ,p_src_line_number => 9
    ,p_offset => 232
    ,p_length => 61
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO users3 VALUES(1,''azmi'',''azmi007@@##'',''admin'',''1'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172462700938982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 17
    ,p_src_line_number => 30
    ,p_offset => 621
    ,p_length => 58
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airlines VALUES (1, ''American Airlines'', ''AA'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172462992473982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 19
    ,p_src_line_number => 31
    ,p_offset => 682
    ,p_length => 55
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airlines VALUES (2, ''Delta Airlines'', ''DL'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172463107466982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 21
    ,p_src_line_number => 32
    ,p_offset => 740
    ,p_length => 56
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airlines VALUES (3, ''United Airlines'', ''UA'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172463362852982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 23
    ,p_src_line_number => 33
    ,p_offset => 799
    ,p_length => 59
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airlines VALUES (4, ''Southwest Airlines'', ''WN'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172463583071982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 25
    ,p_src_line_number => 34
    ,p_offset => 861
    ,p_length => 56
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airlines VALUES (5, ''JetBlue Airways'', ''B6'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172463778421982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 27
    ,p_src_line_number => 35
    ,p_offset => 920
    ,p_length => 56
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airlines VALUES (6, ''Alaska Airlines'', ''AS'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172463946852982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 29
    ,p_src_line_number => 36
    ,p_offset => 979
    ,p_length => 56
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airlines VALUES (7, ''Spirit Airlines'', ''NK'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172464120194982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 31
    ,p_src_line_number => 37
    ,p_offset => 1038
    ,p_length => 58
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airlines VALUES (8, ''Frontier Airlines'', ''F9'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172464331314982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 33
    ,p_src_line_number => 38
    ,p_offset => 1099
    ,p_length => 58
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airlines VALUES (9, ''Hawaiian Airlines'', ''HA'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172464522064982808
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 35
    ,p_src_line_number => 39
    ,p_offset => 1160
    ,p_length => 55
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airlines VALUES (10, ''Allegiant Air'', ''G4'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172465599520982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 41
    ,p_src_line_number => 49
    ,p_offset => 1413
    ,p_length => 98
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airports VALUES (1, ''John F. Kennedy International Airport'', ''JFK'', ''New York'', ''USA'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172465712154982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 43
    ,p_src_line_number => 50
    ,p_offset => 1514
    ,p_length => 97
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airports VALUES (2, ''Los Angeles International Airport'', ''LAX'', ''Los Angeles'', ''USA'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172465919843982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 45
    ,p_src_line_number => 51
    ,p_offset => 1614
    ,p_length => 81
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airports VALUES (3, ''London Heathrow Airport'', ''LHR'', ''London'', ''UK'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172466132122982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 47
    ,p_src_line_number => 52
    ,p_offset => 1698
    ,p_length => 80
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airports VALUES (4, ''Tokyo Haneda Airport'', ''HND'', ''Tokyo'', ''Japan'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172466393103982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 49
    ,p_src_line_number => 53
    ,p_offset => 1781
    ,p_length => 85
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airports VALUES (5, ''Dubai International Airport'', ''DXB'', ''Dubai'', ''UAE'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172466509876982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 51
    ,p_src_line_number => 54
    ,p_offset => 1869
    ,p_length => 92
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airports VALUES (6, ''Paris Charles de Gaulle Airport'', ''CDG'', ''Paris'', ''France'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172466721402982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 53
    ,p_src_line_number => 55
    ,p_offset => 1964
    ,p_length => 83
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airports VALUES (7, ''Frankfurt Airport'', ''FRA'', ''Frankfurt'', ''Germany'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172466925785982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 55
    ,p_src_line_number => 56
    ,p_offset => 2050
    ,p_length => 92
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airports VALUES (8, ''Singapore Changi Airport'', ''SIN'', ''Singapore'', ''Singapore'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172467154126982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 57
    ,p_src_line_number => 57
    ,p_offset => 2145
    ,p_length => 95
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airports VALUES (9, ''Sydney Kingsford Smith Airport'', ''SYD'', ''Sydney'', ''Australia'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172467323513982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 59
    ,p_src_line_number => 58
    ,p_offset => 2243
    ,p_length => 101
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Airports VALUES (10, ''Toronto Pearson International Airport'', ''YYZ'', ''Toronto'', ''Canada'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172471082717982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 78
    ,p_src_line_number => 101
    ,p_offset => 3320
    ,p_length => 91
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172471108535982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 78
    ,p_src_line_number => 102
    ,p_offset => 3412
    ,p_length => 44
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'VALUES (1, ''John'', ''Doe'', ''P1234567'', ''USA'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172471390321982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 80
    ,p_src_line_number => 103
    ,p_offset => 3459
    ,p_length => 91
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172471407305982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 80
    ,p_src_line_number => 104
    ,p_offset => 3551
    ,p_length => 45
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'VALUES (2, ''Jane'', ''Smith'', ''P2345678'', ''UK'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172471689158982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 82
    ,p_src_line_number => 105
    ,p_offset => 3599
    ,p_length => 91
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172471715440982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 82
    ,p_src_line_number => 106
    ,p_offset => 3691
    ,p_length => 52
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'VALUES (3, ''Alice'', ''Johnson'', ''P3456789'', ''Canada'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172471983152982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 84
    ,p_src_line_number => 107
    ,p_offset => 3746
    ,p_length => 91
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172472098472982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 84
    ,p_src_line_number => 108
    ,p_offset => 3838
    ,p_length => 51
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'VALUES (4, ''Bob'', ''Brown'', ''P4567890'', ''Australia'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172472254914982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 86
    ,p_src_line_number => 109
    ,p_offset => 3892
    ,p_length => 91
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172472300433982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 86
    ,p_src_line_number => 110
    ,p_offset => 3984
    ,p_length => 57
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'VALUES (5, ''Charlie'', ''Davis'', ''P5678901'', ''New Zealand'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172472570417982809
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 88
    ,p_src_line_number => 111
    ,p_offset => 4044
    ,p_length => 91
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172472608721982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 88
    ,p_src_line_number => 112
    ,p_offset => 4136
    ,p_length => 56
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'VALUES (6, ''Diana'', ''Evans'', ''P6789012'', ''South Africa'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172472841834982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 90
    ,p_src_line_number => 113
    ,p_offset => 4195
    ,p_length => 91
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172472946638982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 90
    ,p_src_line_number => 114
    ,p_offset => 4287
    ,p_length => 52
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'VALUES (7, ''Ethan'', ''Foster'', ''P7890123'', ''Ireland'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172473138915982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 92
    ,p_src_line_number => 115
    ,p_offset => 4342
    ,p_length => 91
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172473269372982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 92
    ,p_src_line_number => 116
    ,p_offset => 4434
    ,p_length => 50
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'VALUES (8, ''Fiona'', ''Garcia'', ''P8901234'', ''Spain'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172473469624982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 94
    ,p_src_line_number => 117
    ,p_offset => 4487
    ,p_length => 91
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172473546545982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 94
    ,p_src_line_number => 118
    ,p_offset => 4579
    ,p_length => 53
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'VALUES (9, ''George'', ''Harris'', ''P9012345'', ''Germany'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172473790866982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 96
    ,p_src_line_number => 119
    ,p_offset => 4635
    ,p_length => 91
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172473834674982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 96
    ,p_src_line_number => 120
    ,p_offset => 4727
    ,p_length => 51
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'VALUES (10, ''Hannah'', ''Ibrahim'', ''P0123456'', ''UAE'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172477277631982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 114
    ,p_src_line_number => 159
    ,p_offset => 5591
    ,p_length => 93
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (1, ''Tom'', ''Johnson'', ''Pilot'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172477498030982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 116
    ,p_src_line_number => 160
    ,p_offset => 5687
    ,p_length => 102
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (2, ''Sarah'', ''Lee'', ''Flight Attendant'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172477621370982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 118
    ,p_src_line_number => 161
    ,p_offset => 5792
    ,p_length => 98
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (3, ''Michael'', ''Smith'', ''Co-Pilot'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172477827271982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 120
    ,p_src_line_number => 162
    ,p_offset => 5893
    ,p_length => 104
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (4, ''Emily'', ''Davis'', ''Flight Attendant'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172478021620982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 122
    ,p_src_line_number => 163
    ,p_offset => 6000
    ,p_length => 93
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (5, ''James'', ''Brown'', ''Pilot'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172478272571982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 124
    ,p_src_line_number => 164
    ,p_offset => 6096
    ,p_length => 107
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (6, ''Jessica'', ''Wilson'', ''Flight Attendant'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172478492929982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 126
    ,p_src_line_number => 165
    ,p_offset => 6206
    ,p_length => 97
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (7, ''David'', ''Taylor'', ''Co-Pilot'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172478693664982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 128
    ,p_src_line_number => 166
    ,p_offset => 6306
    ,p_length => 107
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (8, ''Laura'', ''Anderson'', ''Flight Attendant'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172478877032982810
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 130
    ,p_src_line_number => 167
    ,p_offset => 6416
    ,p_length => 95
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (9, ''Robert'', ''Thomas'', ''Pilot'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172479097083982811
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 132
    ,p_src_line_number => 168
    ,p_offset => 6514
    ,p_length => 104
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (10, ''Anna'', ''Moore'', ''Flight Attendant'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172485450231982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 165
    ,p_src_line_number => 242
    ,p_offset => 8265
    ,p_length => 191
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (1, ''Ticket Sale'', 500.00, TO_TIMESTAMP(''2024-08-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172485653921982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 167
    ,p_src_line_number => 243
    ,p_offset => 8459
    ,p_length => 192
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (2, ''Ticket Sale'', 1500.00, TO_TIMESTAMP(''2024-08-05 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172485879204982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 169
    ,p_src_line_number => 244
    ,p_offset => 8654
    ,p_length => 192
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (3, ''Ticket Sale'', 2500.00, TO_TIMESTAMP(''2024-08-10 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172486055904982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 171
    ,p_src_line_number => 245
    ,p_offset => 8849
    ,p_length => 191
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (4, ''Ticket Sale'', 600.00, TO_TIMESTAMP(''2024-08-15 18:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172486294422982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 173
    ,p_src_line_number => 246
    ,p_offset => 9043
    ,p_length => 192
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (5, ''Ticket Sale'', 1600.00, TO_TIMESTAMP(''2024-08-20 20:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172486401737982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 175
    ,p_src_line_number => 247
    ,p_offset => 9238
    ,p_length => 192
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (6, ''Ticket Sale'', 2600.00, TO_TIMESTAMP(''2024-08-25 22:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172486697855982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 177
    ,p_src_line_number => 248
    ,p_offset => 9433
    ,p_length => 191
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (7, ''Ticket Sale'', 700.00, TO_TIMESTAMP(''2024-08-30 10:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172486854458982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 179
    ,p_src_line_number => 249
    ,p_offset => 9627
    ,p_length => 192
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (8, ''Ticket Sale'', 1700.00, TO_TIMESTAMP(''2024-09-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172487070366982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 181
    ,p_src_line_number => 250
    ,p_offset => 9822
    ,p_length => 192
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (9, ''Ticket Sale'', 2700.00, TO_TIMESTAMP(''2024-09-05 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 38172487222279982812
    ,p_file_id => 38139561311026183622
    ,p_stmt_number => 183
    ,p_src_line_number => 251
    ,p_offset => 10017
    ,p_length => 192
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (10, ''Ticket Sale'', 800.00, TO_TIMESTAMP(''2024-09-10 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 38140074133949184356,
    p_file_id => 38139561311026183622,
    p_job_id => null,
    p_run_by => 'AZMI00121@GMAIL.COM',
    p_run_as => 'WKSP_AZMI',
    p_started => to_date('202409130822','YYYYMMDDHH24MI'),
    p_start_time => 39184357,
    p_ended => to_date('202409130822','YYYYMMDDHH24MI'),
    p_end_time => 39184463,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140075668262184374
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 15
    ,p_stmt_num => 35
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (1, ''John F. Kennedy International Airport'', ''JFK'', ''New York'', ''USA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184374
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184375
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140075733893184376
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 16
    ,p_stmt_num => 37
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (2, ''Los Angeles International Airport'', ''LAX'', ''Los Angeles'', ''USA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184376
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184376
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140075825437184376
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 17
    ,p_stmt_num => 39
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (3, ''London Heathrow Airport'', ''LHR'', ''London'', ''UK'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184376
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184376
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140075979259184376
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 18
    ,p_stmt_num => 41
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (4, ''Tokyo Haneda Airport'', ''HND'', ''Tokyo'', ''Japan'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184376
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184376
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140076058687184376
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 19
    ,p_stmt_num => 43
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (5, ''Dubai International Airport'', ''DXB'', ''Dubai'', ''UAE'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184376
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184377
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140076135044184377
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 20
    ,p_stmt_num => 45
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (6, ''Paris Charles de Gaulle Airport'', ''CDG'', ''Paris'', ''France'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184377
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184377
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140076235035184377
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 21
    ,p_stmt_num => 47
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (7, ''Frankfurt Airport'', ''FRA'', ''Frankfurt'', ''Germany'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184377
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184377
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140076343615184377
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 22
    ,p_stmt_num => 49
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (8, ''Singapore Changi Airport'', ''SIN'', ''Singapore'', ''Singapore'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184377
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184377
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140076494682184377
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 23
    ,p_stmt_num => 51
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (9, ''Sydney Kingsford Smith Airport'', ''SYD'', ''Sydney'', ''Australia'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184377
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184378
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140076588499184378
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 24
    ,p_stmt_num => 53
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (10, ''Toronto Pearson International Airport'', ''YYZ'', ''Toronto'', ''Canada'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184378
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184378
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140076651261184378
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 25
    ,p_stmt_num => 55
 ,p_stmt_text => 
'CREATE SEQUENCE airport_seq START WITH 1 INCREMENT BY 1'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/17: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184378
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184378
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140076728826184378
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 26
    ,p_stmt_num => 58
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER airport_id_triggerBEFORE INSERT ON AirportsFOR EACH ROWBEGIN    SELECT airport_seq.NEXTVAL INTO :NEW.airport_id FROM dual;END;'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184378
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184380
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140076852064184380
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 27
    ,p_stmt_num => 63
 ,p_stmt_text => 
'CREATE TABLE Flights (    flight_id INT PRIMARY KEY,    airline_id INT,    departure_airport_id INT,    arrival_airport_id INT,    flight_number VARCHAR(10),    departure_time TIMESTAMP,    arrival_time TIMESTAMP,    FOREIGN KEY (airline_id) REFERENCES Airlines(airline_id),    FOREIGN KEY (departure_airport_id) REFERENCES Airports(airport_id),    FOREIGN KEY (arrival_airport_id) REFERENCES Airport'||
's(airport_id))'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184380
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184383
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140076994042184383
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 28
    ,p_stmt_num => 66
 ,p_stmt_text => 
'INSERT INTO Airlines (airline_id, airline_name, airline_code) VALUES (1, ''American Airlines'', ''AA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184384
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184384
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140077016025184384
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 29
    ,p_stmt_num => 70
 ,p_stmt_text => 
'INSERT INTO Airports (airport_id, airport_name, airport_code, city, country) VALUES (1, ''John F. Kennedy International Airport'', ''JFK'', ''New York'', ''USA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184384
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184384
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140077118224184385
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 30
    ,p_stmt_num => 72
 ,p_stmt_text => 
'INSERT INTO Airports (airport_id, airport_name, airport_code, city, country) VALUES (2, ''Los Angeles International Airport'', ''LAX'', ''Los Angeles'', ''USA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184385
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184385
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140077293662184385
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 31
    ,p_stmt_num => 76
 ,p_stmt_text => 
'INSERT INTO Flights (flight_id, airline_id, departure_airport_id, arrival_airport_id, flight_number, departure_time, arrival_time) VALUES (1, 1, 1, 2, ''AA101'', TO_TIMESTAMP(''2024-09-01 08:00:00'', ''YYYY-MM-DD HH24:MI:SS''), TO_TIMESTAMP(''2024-09-01 11:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315168) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184385
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184386
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140077377044184386
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 32
    ,p_stmt_num => 78
 ,p_stmt_text => 
'INSERT INTO Flights VALUES (2, 2, 2, 3, ''DL202'', TO_TIMESTAMP(''2024-09-01 09:00:00'', ''YYYY-MM-DD HH24:MI:SS''), TO_TIMESTAMP(''2024-09-01 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315168) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184386
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184387
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140077466557184387
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 33
    ,p_stmt_num => 80
 ,p_stmt_text => 
'INSERT INTO Flights VALUES (3, 3, 3, 4, ''UA303'', TO_TIMESTAMP(''2024-09-01 10:00:00'', ''YYYY-MM-DD HH24:MI:SS''), TO_TIMESTAMP(''2024-09-01 18:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315168) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184387
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184387
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140077517657184387
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 34
    ,p_stmt_num => 82
 ,p_stmt_text => 
'INSERT INTO Flights VALUES (4, 4, 4, 5, ''WN404'', TO_TIMESTAMP(''2024-09-01 11:00:00'', ''YYYY-MM-DD HH24:MI:SS''), TO_TIMESTAMP(''2024-09-01 15:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315168) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184387
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184387
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140077646732184387
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 35
    ,p_stmt_num => 84
 ,p_stmt_text => 
'INSERT INTO Flights VALUES (5, 5, 5, 6, ''B605'', TO_TIMESTAMP(''2024-09-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''), TO_TIMESTAMP(''2024-09-01 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315168) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184387
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184388
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140077709074184388
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 36
    ,p_stmt_num => 86
 ,p_stmt_text => 
'INSERT INTO Flights VALUES (6, 6, 6, 7, ''AS606'', TO_TIMESTAMP(''2024-09-01 13:00:00'', ''YYYY-MM-DD HH24:MI:SS''), TO_TIMESTAMP(''2024-09-01 17:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315168) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184388
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184388
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140077877915184388
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 37
    ,p_stmt_num => 88
 ,p_stmt_text => 
'INSERT INTO Flights VALUES (7, 7, 7, 8, ''NK707'', TO_TIMESTAMP(''2024-09-01 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''), TO_TIMESTAMP(''2024-09-01 18:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315168) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184388
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184388
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140077962392184388
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 38
    ,p_stmt_num => 90
 ,p_stmt_text => 
'INSERT INTO Flights VALUES (8, 8, 8, 9, ''F908'', TO_TIMESTAMP(''2024-09-01 15:00:00'', ''YYYY-MM-DD HH24:MI:SS''), TO_TIMESTAMP(''2024-09-01 19:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315168) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184388
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184389
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140078092973184389
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 39
    ,p_stmt_num => 92
 ,p_stmt_text => 
'INSERT INTO Flights VALUES (9, 9, 9, 10, ''HA909'', TO_TIMESTAMP(''2024-09-01 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''), TO_TIMESTAMP(''2024-09-01 20:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315168) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184389
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184389
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140078101358184389
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 40
    ,p_stmt_num => 94
 ,p_stmt_text => 
'INSERT INTO Flights VALUES (10, 10, 10, 1, ''G410'', TO_TIMESTAMP(''2024-09-01 17:00:00'', ''YYYY-MM-DD HH24:MI:SS''), TO_TIMESTAMP(''2024-09-01 21:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315168) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184389
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184389
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140078208996184389
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 41
    ,p_stmt_num => 96
 ,p_stmt_text => 
'CREATE SEQUENCE flight_seq START WITH 1 INCREMENT BY 1'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/17: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184389
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184390
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140078300623184390
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 42
    ,p_stmt_num => 99
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER flight_id_triggerBEFORE INSERT ON FlightsFOR EACH ROWBEGIN    SELECT flight_seq.NEXTVAL INTO :NEW.flight_id FROM dual;END;'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184390
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184392
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140078425722184392
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 43
    ,p_stmt_num => 103
 ,p_stmt_text => 
'CREATE TABLE Passengers (    passenger_id INT PRIMARY KEY,    first_name VARCHAR(50),    last_name VARCHAR(50),    passport_number VARCHAR(20),    nationality VARCHAR(50))'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184392
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184394
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140078505296184394
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 44
    ,p_stmt_num => 105
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)VALUES (1, ''John'', ''Doe'', ''P1234567'', ''USA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184394
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184396
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140078934663184397
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 48
    ,p_stmt_num => 113
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)VALUES (5, ''Charlie'', ''Davis'', ''P5678901'', ''New Zealand'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184397
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184397
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140078671095184396
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 45
    ,p_stmt_num => 107
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)VALUES (2, ''Jane'', ''Smith'', ''P2345678'', ''UK'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184396
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184396
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140078718131184396
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 46
    ,p_stmt_num => 109
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)VALUES (3, ''Alice'', ''Johnson'', ''P3456789'', ''Canada'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184396
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184396
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140078864899184396
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 47
    ,p_stmt_num => 111
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)VALUES (4, ''Bob'', ''Brown'', ''P4567890'', ''Australia'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184396
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184397
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140079051678184397
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 49
    ,p_stmt_num => 115
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)VALUES (6, ''Diana'', ''Evans'', ''P6789012'', ''South Africa'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184397
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184397
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140079145953184397
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 50
    ,p_stmt_num => 117
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)VALUES (7, ''Ethan'', ''Foster'', ''P7890123'', ''Ireland'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184397
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184398
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140079209634184398
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 51
    ,p_stmt_num => 119
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)VALUES (8, ''Fiona'', ''Garcia'', ''P8901234'', ''Spain'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184398
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184398
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140079339065184398
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 52
    ,p_stmt_num => 121
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)VALUES (9, ''George'', ''Harris'', ''P9012345'', ''Germany'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184398
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184398
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140079412800184398
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 53
    ,p_stmt_num => 123
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)VALUES (10, ''Hannah'', ''Ibrahim'', ''P0123456'', ''UAE'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184398
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184398
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140079565981184398
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 54
    ,p_stmt_num => 125
 ,p_stmt_text => 
'CREATE SEQUENCE passenger_seq START WITH 1 INCREMENT BY 1'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/17: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184398
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184399
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140079646896184399
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 55
    ,p_stmt_num => 128
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER passenger_id_triggerBEFORE INSERT ON PassengersFOR EACH ROWBEGIN    SELECT passenger_seq.NEXTVAL INTO :NEW.passenger_id FROM dual;END;'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184399
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184401
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140079798503184401
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 56
    ,p_stmt_num => 133
 ,p_stmt_text => 
'CREATE TABLE Bookings (    booking_id INT PRIMARY KEY,    flight_id INT,    passenger_id INT,    booking_date TIMESTAMP,    seat_class VARCHAR(20),    price DECIMAL(10, 2),    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id))'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184401
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184405
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140079844852184405
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 57
    ,p_stmt_num => 135
 ,p_stmt_text => 
'INSERT INTO Bookings (booking_id, flight_id, passenger_id, booking_date, seat_class, price)VALUES (1, 1, 1, TO_TIMESTAMP(''2024-08-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''), ''Economy'', 500.00)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315173) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184405
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184407
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140079903268184407
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 58
    ,p_stmt_num => 137
 ,p_stmt_text => 
'INSERT INTO Bookings (booking_id, flight_id, passenger_id, booking_date, seat_class, price)VALUES (2, 2, 2, TO_TIMESTAMP(''2024-08-05 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''), ''Business'', 1500.00)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315173) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184407
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184407
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140080453409184408
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 62
    ,p_stmt_num => 145
 ,p_stmt_text => 
'INSERT INTO Bookings (booking_id, flight_id, passenger_id, booking_date, seat_class, price)VALUES (6, 6, 6, TO_TIMESTAMP(''2024-08-25 22:00:00'', ''YYYY-MM-DD HH24:MI:SS''), ''First'', 2600.00)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315173) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184408
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184409
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140080149174184407
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 59
    ,p_stmt_num => 139
 ,p_stmt_text => 
'INSERT INTO Bookings (booking_id, flight_id, passenger_id, booking_date, seat_class, price)VALUES (3, 3, 3, TO_TIMESTAMP(''2024-08-10 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''), ''First'', 2500.00)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315173) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184407
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184407
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140080205486184407
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 60
    ,p_stmt_num => 141
 ,p_stmt_text => 
'INSERT INTO Bookings (booking_id, flight_id, passenger_id, booking_date, seat_class, price)VALUES (4, 4, 4, TO_TIMESTAMP(''2024-08-15 18:00:00'', ''YYYY-MM-DD HH24:MI:SS''), ''Economy'', 600.00)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315173) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184407
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184408
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140080348060184408
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 61
    ,p_stmt_num => 143
 ,p_stmt_text => 
'INSERT INTO Bookings (booking_id, flight_id, passenger_id, booking_date, seat_class, price)VALUES (5, 5, 5, TO_TIMESTAMP(''2024-08-20 20:00:00'', ''YYYY-MM-DD HH24:MI:SS''), ''Business'', 1600.00)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315173) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184408
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184408
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140080596704184409
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 63
    ,p_stmt_num => 147
 ,p_stmt_text => 
'INSERT INTO Bookings (booking_id, flight_id, passenger_id, booking_date, seat_class, price)VALUES (7, 7, 7, TO_TIMESTAMP(''2024-08-30 10:00:00'', ''YYYY-MM-DD HH24:MI:SS''), ''Economy'', 700.00)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315173) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184409
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184409
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140080678582184409
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 64
    ,p_stmt_num => 149
 ,p_stmt_text => 
'INSERT INTO Bookings (booking_id, flight_id, passenger_id, booking_date, seat_class, price)VALUES (8, 8, 8, TO_TIMESTAMP(''2024-09-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''), ''Business'', 1700.00)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315173) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184409
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184409
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140080724237184409
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 65
    ,p_stmt_num => 151
 ,p_stmt_text => 
'INSERT INTO Bookings (booking_id, flight_id, passenger_id, booking_date, seat_class, price)VALUES (9, 9, 9, TO_TIMESTAMP(''2024-09-05 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''), ''First'', 2700.00)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315173) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184410
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184410
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140080840946184410
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 66
    ,p_stmt_num => 153
 ,p_stmt_text => 
'INSERT INTO Bookings (booking_id, flight_id, passenger_id, booking_date, seat_class, price)VALUES (10, 10, 10, TO_TIMESTAMP(''2024-09-10 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''), ''Economy'', 800.00)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315173) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184410
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184410
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140080964158184410
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 67
    ,p_stmt_num => 155
 ,p_stmt_text => 
'CREATE SEQUENCE booking_seq START WITH 1 INCREMENT BY 1'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/17: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184410
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184411
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140081067921184411
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 68
    ,p_stmt_num => 158
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER booking_id_triggerBEFORE INSERT ON BookingsFOR EACH ROWBEGIN    SELECT booking_seq.NEXTVAL INTO :NEW.booking_id FROM dual;END;'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184411
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184412
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140081196485184413
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 69
    ,p_stmt_num => 163
 ,p_stmt_text => 
'CREATE TABLE Crew (    crew_id INT PRIMARY KEY,    first_name VARCHAR(50),    last_name VARCHAR(50),    role VARCHAR(50))'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184413
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184415
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140081288183184415
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 70
    ,p_stmt_num => 165
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (1, ''Tom'', ''Johnson'', ''Pilot'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184415
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184416
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140081339415184416
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 71
    ,p_stmt_num => 167
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (2, ''Sarah'', ''Lee'', ''Flight Attendant'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184416
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184417
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140081798640184418
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 75
    ,p_stmt_num => 175
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (6, ''Jessica'', ''Wilson'', ''Flight Attendant'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184418
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184418
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140081488817184417
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 72
    ,p_stmt_num => 169
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (3, ''Michael'', ''Smith'', ''Co-Pilot'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184417
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184417
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140081533358184417
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 73
    ,p_stmt_num => 171
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (4, ''Emily'', ''Davis'', ''Flight Attendant'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184417
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184417
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140081698978184417
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 74
    ,p_stmt_num => 173
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (5, ''James'', ''Brown'', ''Pilot'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184417
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184418
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140081833776184418
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 76
    ,p_stmt_num => 177
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (7, ''David'', ''Taylor'', ''Co-Pilot'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184418
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184418
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140081996133184418
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 77
    ,p_stmt_num => 179
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (8, ''Laura'', ''Anderson'', ''Flight Attendant'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184418
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184418
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140082046890184418
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 78
    ,p_stmt_num => 181
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (9, ''Robert'', ''Thomas'', ''Pilot'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184418
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184419
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140082109009184419
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 79
    ,p_stmt_num => 183
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (10, ''Anna'', ''Moore'', ''Flight Attendant'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184419
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184419
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140082203916184419
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 80
    ,p_stmt_num => 185
 ,p_stmt_text => 
'CREATE SEQUENCE crew_seq START WITH 1 INCREMENT BY 1'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/17: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184419
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184419
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140082311452184419
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 81
    ,p_stmt_num => 188
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER crew_id_triggerBEFORE INSERT ON CrewFOR EACH ROWBEGIN    :NEW.crew_id := crew_seq.NEXTVAL;END;'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184419
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184421
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140082478358184421
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 82
    ,p_stmt_num => 193
 ,p_stmt_text => 
'CREATE TABLE Flight_Crew (    flight_id INT,    crew_id INT,    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id) ON DELETE CASCADE,    FOREIGN KEY (crew_id) REFERENCES Crew(crew_id) ON DELETE CASCADE,    PRIMARY KEY (flight_id, crew_id))'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184422
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184424
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140082503371184424
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 83
    ,p_stmt_num => 195
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (1, 1)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184424
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184426
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140082612110184426
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 84
    ,p_stmt_num => 197
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (1, 2)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184426
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184426
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140082770999184427
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 85
    ,p_stmt_num => 199
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (2, 1)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184427
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184427
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140082815242184427
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 86
    ,p_stmt_num => 201
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (2, 3)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184427
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184427
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140082959205184427
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 87
    ,p_stmt_num => 203
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (3, 4)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184427
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184427
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140083047612184428
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 88
    ,p_stmt_num => 205
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (3, 5)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184428
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184428
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140083184845184428
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 89
    ,p_stmt_num => 207
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (4, 6)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184428
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184428
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140083205219184428
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 90
    ,p_stmt_num => 209
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (4, 7)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184428
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184428
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140083634331184430
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 94
    ,p_stmt_num => 217
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (6, 1)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184430
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184430
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140083305061184429
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 91
    ,p_stmt_num => 211
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (5, 8)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184429
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184429
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140083401873184429
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 92
    ,p_stmt_num => 213
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (5, 9)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184429
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184429
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140083544509184429
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 93
    ,p_stmt_num => 215
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (6, 10)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184429
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184429
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140083712557184430
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 95
    ,p_stmt_num => 219
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (7, 2)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184430
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184430
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140083823261184430
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 96
    ,p_stmt_num => 221
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (7, 3)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184430
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184430
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140083940897184430
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 97
    ,p_stmt_num => 223
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (8, 4)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184431
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184431
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140084044253184431
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 98
    ,p_stmt_num => 225
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (8, 5)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184431
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184431
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140084191757184431
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 99
    ,p_stmt_num => 227
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (9, 6)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184431
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184431
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140084258974184431
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 100
    ,p_stmt_num => 229
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (9, 7)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184431
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184432
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140084306986184432
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 101
    ,p_stmt_num => 231
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (10, 8)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184432
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184432
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140084417902184432
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 102
    ,p_stmt_num => 233
 ,p_stmt_text => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (10, 9)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315177) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184432
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184432
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140084556679184433
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 103
    ,p_stmt_num => 238
 ,p_stmt_text => 
'CREATE TABLE Payments (    payment_id INT PRIMARY KEY,    booking_id INT,    payment_date TIMESTAMP,    amount DECIMAL(10, 2),    payment_method VARCHAR(20),    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id))'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184433
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184435
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140084644095184435
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 104
    ,p_stmt_num => 240
 ,p_stmt_text => 
'INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method)VALUES (1, 1, TO_TIMESTAMP(''2024-08-02 10:00:00'', ''YYYY-MM-DD HH24:MI:SS''), 500.00, ''Credit Card'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315180) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184435
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184436
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140084756894184437
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 105
    ,p_stmt_num => 242
 ,p_stmt_text => 
'INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method)VALUES (2, 2, TO_TIMESTAMP(''2024-08-06 11:00:00'', ''YYYY-MM-DD HH24:MI:SS''), 1500.00, ''PayPal'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315180) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184437
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184437
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140084892441184437
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 106
    ,p_stmt_num => 244
 ,p_stmt_text => 
'INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method)VALUES (3, 3, TO_TIMESTAMP(''2024-08-11 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''), 2500.00, ''Credit Card'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315180) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184437
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184437
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140085259725184438
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 110
    ,p_stmt_num => 252
 ,p_stmt_text => 
'INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method)VALUES (7, 7, TO_TIMESTAMP(''2024-08-31 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''), 700.00, ''Debit Card'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315180) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184438
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184439
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140084999927184437
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 107
    ,p_stmt_num => 246
 ,p_stmt_text => 
'INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method)VALUES (4, 4, TO_TIMESTAMP(''2024-08-16 13:00:00'', ''YYYY-MM-DD HH24:MI:SS''), 600.00, ''Debit Card'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315180) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184437
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184438
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140085059932184438
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 108
    ,p_stmt_num => 248
 ,p_stmt_text => 
'INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method)VALUES (5, 5, TO_TIMESTAMP(''2024-08-21 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''), 1600.00, ''PayPal'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315180) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184438
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184438
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140085102185184438
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 109
    ,p_stmt_num => 250
 ,p_stmt_text => 
'INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method)VALUES (6, 6, TO_TIMESTAMP(''2024-08-26 15:00:00'', ''YYYY-MM-DD HH24:MI:SS''), 2600.00, ''Credit Card'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315180) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184438
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184438
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140085300206184439
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 111
    ,p_stmt_num => 254
 ,p_stmt_text => 
'INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method)VALUES (8, 8, TO_TIMESTAMP(''2024-09-02 17:00:00'', ''YYYY-MM-DD HH24:MI:SS''), 1700.00, ''PayPal'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315180) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184439
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184439
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140085424252184439
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 112
    ,p_stmt_num => 256
 ,p_stmt_text => 
'INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method)VALUES (9, 9, TO_TIMESTAMP(''2024-09-06 18:00:00'', ''YYYY-MM-DD HH24:MI:SS''), 2700.00, ''Credit Card'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315180) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184439
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184439
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140085560279184439
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 113
    ,p_stmt_num => 258
 ,p_stmt_text => 
'INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method)VALUES (10, 10, TO_TIMESTAMP(''2024-09-11 19:00:00'', ''YYYY-MM-DD HH24:MI:SS''), 800.00, ''Debit Card'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315180) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184439
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184440
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140085601546184440
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 114
    ,p_stmt_num => 260
 ,p_stmt_text => 
'CREATE SEQUENCE payment_seq START WITH 1 INCREMENT BY 1'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/17: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184440
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184440
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140085775059184440
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 115
    ,p_stmt_num => 263
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER payment_id_triggerBEFORE INSERT ON PaymentsFOR EACH ROWBEGIN    SELECT payment_seq.NEXTVAL INTO :NEW.payment_id FROM dual;END;'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184440
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184442
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140085896859184442
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 116
    ,p_stmt_num => 268
 ,p_stmt_text => 
'CREATE TABLE Flight_Status (    status_id INT PRIMARY KEY,    flight_id INT,    status VARCHAR(20),    updated_time TIMESTAMP,    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id))'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184442
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184444
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140085938066184445
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 117
    ,p_stmt_num => 270
 ,p_stmt_text => 
'INSERT INTO Flight_Status (status_id, flight_id, status, updated_time) VALUES (1, 1, ''On Time'', TO_TIMESTAMP(''2024-09-01 07:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315182) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184445
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184446
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140086084543184446
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 118
    ,p_stmt_num => 272
 ,p_stmt_text => 
'INSERT INTO Flight_Status (status_id, flight_id, status, updated_time) VALUES (2, 2, ''Delayed'', TO_TIMESTAMP(''2024-09-01 08:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315182) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184446
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184446
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140086412487184448
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 122
    ,p_stmt_num => 280
 ,p_stmt_text => 
'INSERT INTO Flight_Status (status_id, flight_id, status, updated_time) VALUES (6, 6, ''Delayed'', TO_TIMESTAMP(''2024-09-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315182) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184448
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184448
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140086164780184447
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 119
    ,p_stmt_num => 274
 ,p_stmt_text => 
'INSERT INTO Flight_Status (status_id, flight_id, status, updated_time) VALUES (3, 3, ''On Time'', TO_TIMESTAMP(''2024-09-01 09:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315182) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184447
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184447
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140086234392184447
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 120
    ,p_stmt_num => 276
 ,p_stmt_text => 
'INSERT INTO Flight_Status (status_id, flight_id, status, updated_time) VALUES (4, 4, ''Cancelled'', TO_TIMESTAMP(''2024-09-01 10:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315182) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184447
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184447
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140086389844184447
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 121
    ,p_stmt_num => 278
 ,p_stmt_text => 
'INSERT INTO Flight_Status (status_id, flight_id, status, updated_time) VALUES (5, 5, ''On Time'', TO_TIMESTAMP(''2024-09-01 11:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315182) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184447
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184448
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140086560544184448
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 123
    ,p_stmt_num => 282
 ,p_stmt_text => 
'INSERT INTO Flight_Status (status_id, flight_id, status, updated_time) VALUES (7, 7, ''On Time'', TO_TIMESTAMP(''2024-09-01 13:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315182) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184448
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184448
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140086685126184448
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 124
    ,p_stmt_num => 284
 ,p_stmt_text => 
'INSERT INTO Flight_Status (status_id, flight_id, status, updated_time) VALUES (8, 8, ''On Time'', TO_TIMESTAMP(''2024-09-01 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315182) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184448
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184449
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140086790543184449
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 125
    ,p_stmt_num => 286
 ,p_stmt_text => 
'INSERT INTO Flight_Status (status_id, flight_id, status, updated_time) VALUES (9, 9, ''Delayed'', TO_TIMESTAMP(''2024-09-01 15:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315182) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184449
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184449
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140086806697184449
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 126
    ,p_stmt_num => 288
 ,p_stmt_text => 
'INSERT INTO Flight_Status (status_id, flight_id, status, updated_time) VALUES (10, 10, ''On Time'', TO_TIMESTAMP(''2024-09-01 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_AZMI.SYS_C00165315182) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184449
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184449
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140086967048184449
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 127
    ,p_stmt_num => 290
 ,p_stmt_text => 
'CREATE SEQUENCE flight_status_seq START WITH 1 INCREMENT BY 1'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/17: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184449
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184450
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140087043321184450
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 128
    ,p_stmt_num => 293
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER flight_status_id_triggerBEFORE INSERT ON Flight_StatusFOR EACH ROWBEGIN    SELECT flight_status_seq.NEXTVAL INTO :NEW.status_id FROM dual;END;'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184450
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184452
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140087192670184452
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 129
    ,p_stmt_num => 298
 ,p_stmt_text => 
'CREATE TABLE Financial_Transactions (    transaction_id INT PRIMARY KEY,    transaction_type VARCHAR(50),    amount DECIMAL(10, 2),    transaction_date TIMESTAMP)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184452
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184454
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140087246476184454
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 130
    ,p_stmt_num => 300
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (1, ''Ticket Sale'', 500.00, TO_TIMESTAMP(''2024-08-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184454
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184456
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140087345734184456
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 131
    ,p_stmt_num => 302
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (2, ''Ticket Sale'', 1500.00, TO_TIMESTAMP(''2024-08-05 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184456
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184456
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140087749637184457
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 135
    ,p_stmt_num => 310
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (6, ''Ticket Sale'', 2600.00, TO_TIMESTAMP(''2024-08-25 22:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184457
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184457
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140087466836184456
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 132
    ,p_stmt_num => 304
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (3, ''Ticket Sale'', 2500.00, TO_TIMESTAMP(''2024-08-10 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184456
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184456
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140087527725184456
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 133
    ,p_stmt_num => 306
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (4, ''Ticket Sale'', 600.00, TO_TIMESTAMP(''2024-08-15 18:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184456
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184457
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140087606092184457
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 134
    ,p_stmt_num => 308
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (5, ''Ticket Sale'', 1600.00, TO_TIMESTAMP(''2024-08-20 20:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184457
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184457
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140087805678184457
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 136
    ,p_stmt_num => 312
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (7, ''Ticket Sale'', 700.00, TO_TIMESTAMP(''2024-08-30 10:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184457
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184458
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140087946343184458
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 137
    ,p_stmt_num => 314
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (8, ''Ticket Sale'', 1700.00, TO_TIMESTAMP(''2024-09-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184458
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184458
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140088026728184458
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 138
    ,p_stmt_num => 316
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (9, ''Ticket Sale'', 2700.00, TO_TIMESTAMP(''2024-09-05 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184458
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184458
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140088179053184458
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 139
    ,p_stmt_num => 318
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (10, ''Ticket Sale'', 800.00, TO_TIMESTAMP(''2024-09-10 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184458
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184459
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140088239070184459
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 140
    ,p_stmt_num => 320
 ,p_stmt_text => 
'CREATE SEQUENCE financial_transaction_seq START WITH 1 INCREMENT BY 1'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/17: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184459
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184459
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140088306380184459
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 141
    ,p_stmt_num => 323
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER financial_transaction_id_triggerBEFORE INSERT ON Financial_TransactionsFOR EACH ROWBEGIN    SELECT financial_transaction_seq.NEXTVAL INTO :NEW.transaction_id FROM dual;END;'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184459
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184461
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140088498485184462
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 142
    ,p_stmt_num => 327
 ,p_stmt_text => 
'COMMIT'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Statement processed.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184462
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184462
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140074736340184369
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 6
    ,p_stmt_num => 15
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (3, ''United Airlines'', ''UA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184369
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184369
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140074239677184358
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 1
    ,p_stmt_num => 2
 ,p_stmt_text => 
'CREATE TABLE Airlines (    airline_id INT PRIMARY KEY,    airline_name VARCHAR(100) NOT NULL,    airline_code VARCHAR(10) NOT NULL)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184358
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184362
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140074342034184362
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 2
    ,p_stmt_num => 5
 ,p_stmt_text => 
'CREATE SEQUENCE airline_seq START WITH 1 INCREMENT BY 1'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/17: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184362
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184363
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140074423667184363
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 3
    ,p_stmt_num => 8
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER airline_id_triggerBEFORE INSERT ON AirlinesFOR EACH ROWBEGIN    SELECT airline_seq.NEXTVAL INTO :NEW.airline_id FROM dual;END;'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184363
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184366
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140074555433184366
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 4
    ,p_stmt_num => 11
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (1, ''American Airlines'', ''AA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184366
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184368
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140074662339184368
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 5
    ,p_stmt_num => 13
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (2, ''Delta Airlines'', ''DL'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184368
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184369
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140074881424184369
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 7
    ,p_stmt_num => 17
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (4, ''Southwest Airlines'', ''WN'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184369
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184369
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140074994366184369
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 8
    ,p_stmt_num => 19
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (5, ''JetBlue Airways'', ''B6'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184369
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184370
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140075035229184370
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 9
    ,p_stmt_num => 21
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (6, ''Alaska Airlines'', ''AS'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184370
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184370
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140075176206184370
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 10
    ,p_stmt_num => 23
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (7, ''Spirit Airlines'', ''NK'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184370
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184370
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140075246392184370
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 11
    ,p_stmt_num => 25
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (8, ''Frontier Airlines'', ''F9'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184370
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184371
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140075352619184371
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 12
    ,p_stmt_num => 27
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (9, ''Hawaiian Airlines'', ''HA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184371
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184371
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140075498045184371
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 13
    ,p_stmt_num => 29
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (10, ''Allegiant Air'', ''G4'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184371
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184371
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38140075588233184371
    ,p_result_id => 38140074133949184356
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 14
    ,p_stmt_num => 33
 ,p_stmt_text => 
'CREATE TABLE Airports (    airport_id INT PRIMARY KEY,    airport_name VARCHAR(100) NOT NULL,    airport_code VARCHAR(10) NOT NULL,    city VARCHAR(50),    country VARCHAR(50))'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_start_time => 39184371
    ,p_ended => to_date('202409130822','YYYYMMDDHH24MI')
    ,p_end_time => 39184374
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130822','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 38172739166566681234,
    p_file_id => 38139561311026183622,
    p_job_id => null,
    p_run_by => 'AZMI00121@GMAIL.COM',
    p_run_as => 'WKSP_AZMI',
    p_started => to_date('202409130945','YYYYMMDDHH24MI'),
    p_start_time => 39681235,
    p_ended => to_date('202409130945','YYYYMMDDHH24MI'),
    p_end_time => 39681319,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172743693236681287
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 45
    ,p_stmt_num => 116
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (2, ''Sarah'', ''Lee'', ''Flight Attendant'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681287
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681287
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172743748561681287
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 46
    ,p_stmt_num => 118
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (3, ''Michael'', ''Smith'', ''Co-Pilot'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681287
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681287
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172743839028681288
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 47
    ,p_stmt_num => 120
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (4, ''Emily'', ''Davis'', ''Flight Attendant'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681288
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681288
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172743926956681288
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 48
    ,p_stmt_num => 122
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (5, ''James'', ''Brown'', ''Pilot'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681288
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681288
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172744094669681288
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 49
    ,p_stmt_num => 124
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (6, ''Jessica'', ''Wilson'', ''Flight Attendant'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681288
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681288
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172744134340681289
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 50
    ,p_stmt_num => 126
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (7, ''David'', ''Taylor'', ''Co-Pilot'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681289
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681289
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172744247480681289
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 51
    ,p_stmt_num => 128
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (8, ''Laura'', ''Anderson'', ''Flight Attendant'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681289
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681289
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172744352377681289
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 52
    ,p_stmt_num => 130
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (9, ''Robert'', ''Thomas'', ''Pilot'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681289
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681289
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172744432867681290
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 53
    ,p_stmt_num => 132
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (10, ''Anna'', ''Moore'', ''Flight Attendant'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681290
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681290
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172744578512681290
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 54
    ,p_stmt_num => 136
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER crew_id_trigger BEFORE INSERT ON Crew FOR EACH ROW BEGIN     :NEW.crew_id := crew_seq.NEXTVAL; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681290
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681292
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172744683895681292
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 55
    ,p_stmt_num => 141
 ,p_stmt_text => 
'CREATE TABLE Flight_Crew (     flight_id INT,     crew_id INT,     first_name VARCHAR(50),     role VARCHAR(50),     FOREIGN KEY (flight_id) REFERENCES Flights(flight_id) ON DELETE CASCADE,     FOREIGN KEY (crew_id) REFERENCES Crew(crew_id) ON DELETE CASCADE,     PRIMARY KEY (flight_id, crew_id) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681292
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681295
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172744703109681295
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 56
    ,p_stmt_num => 144
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER flight_crew_bi_trigger BEFORE INSERT ON Flight_Crew FOR EACH ROW BEGIN     SELECT first_name, role INTO :NEW.first_name, :NEW.role FROM Crew WHERE crew_id = :NEW.crew_id; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681295
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681297
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172744893591681298
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 57
    ,p_stmt_num => 149
 ,p_stmt_text => 
'CREATE TABLE Payments (     payment_id INT PRIMARY KEY,     booking_id INT,     payment_date TIMESTAMP,     amount DECIMAL(10, 2),     payment_method VARCHAR(20),     FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681298
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681300
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172744989774681300
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 58
    ,p_stmt_num => 151
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER payment_id_trigger BEFORE INSERT ON Payments FOR EACH ROW BEGIN     SELECT payment_seq.NEXTVAL INTO :NEW.payment_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681300
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681302
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172745062324681303
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 59
    ,p_stmt_num => 156
 ,p_stmt_text => 
'CREATE TABLE Flight_Status (     status_id INT PRIMARY KEY,     flight_id INT,     status VARCHAR(20),     updated_time TIMESTAMP,     FOREIGN KEY (flight_id) REFERENCES Flights(flight_id) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681303
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681305
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172745185696681305
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 60
    ,p_stmt_num => 158
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER flight_status_id_trigger BEFORE INSERT ON Flight_Status FOR EACH ROW BEGIN     SELECT flight_status_seq.NEXTVAL INTO :NEW.status_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681305
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681307
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172745277535681308
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 61
    ,p_stmt_num => 163
 ,p_stmt_text => 
'CREATE TABLE Financial_Transactions (     transaction_id INT PRIMARY KEY,     transaction_type VARCHAR(50),     amount DECIMAL(10, 2),     transaction_date TIMESTAMP )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681308
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681310
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172745384084681310
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 62
    ,p_stmt_num => 165
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (1, ''Ticket Sale'', 500.00, TO_TIMESTAMP(''2024-08-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681310
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681312
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172745428015681312
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 63
    ,p_stmt_num => 167
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (2, ''Ticket Sale'', 1500.00, TO_TIMESTAMP(''2024-08-05 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681312
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681312
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172745529950681312
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 64
    ,p_stmt_num => 169
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (3, ''Ticket Sale'', 2500.00, TO_TIMESTAMP(''2024-08-10 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681312
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681313
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172745634136681313
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 65
    ,p_stmt_num => 171
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (4, ''Ticket Sale'', 600.00, TO_TIMESTAMP(''2024-08-15 18:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681313
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681313
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172745778213681313
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 66
    ,p_stmt_num => 173
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (5, ''Ticket Sale'', 1600.00, TO_TIMESTAMP(''2024-08-20 20:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681313
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681313
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172745819896681313
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 67
    ,p_stmt_num => 175
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (6, ''Ticket Sale'', 2600.00, TO_TIMESTAMP(''2024-08-25 22:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681313
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681314
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172745930616681314
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 68
    ,p_stmt_num => 177
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (7, ''Ticket Sale'', 700.00, TO_TIMESTAMP(''2024-08-30 10:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681314
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681314
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172746027486681314
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 69
    ,p_stmt_num => 179
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (8, ''Ticket Sale'', 1700.00, TO_TIMESTAMP(''2024-09-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681314
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681314
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172746173190681315
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 70
    ,p_stmt_num => 181
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (9, ''Ticket Sale'', 2700.00, TO_TIMESTAMP(''2024-09-05 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681315
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681315
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172746255832681315
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 71
    ,p_stmt_num => 183
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (10, ''Ticket Sale'', 800.00, TO_TIMESTAMP(''2024-09-10 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681315
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681315
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172746368242681315
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 72
    ,p_stmt_num => 187
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER financial_transaction_id_trigger BEFORE INSERT ON Financial_Transactions FOR EACH ROW BEGIN     SELECT financial_transaction_seq.NEXTVAL INTO :NEW.transaction_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681315
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681318
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172746410432681318
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 73
    ,p_stmt_num => 191
 ,p_stmt_text => 
'COMMIT'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Statement processed.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681318
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681319
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172742785841681274
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 36
    ,p_stmt_num => 90
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (7, ''Ethan'', ''Foster'', ''P7890123'', ''Ireland'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681274
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681274
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172742462046681273
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 33
    ,p_stmt_num => 84
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (4, ''Bob'', ''Brown'', ''P4567890'', ''Australia'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681273
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681273
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172742555768681273
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 34
    ,p_stmt_num => 86
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (5, ''Charlie'', ''Davis'', ''P5678901'', ''New Zealand'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681273
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681273
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172742657454681273
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 35
    ,p_stmt_num => 88
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (6, ''Diana'', ''Evans'', ''P6789012'', ''South Africa'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681273
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681274
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172742851419681274
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 37
    ,p_stmt_num => 92
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (8, ''Fiona'', ''Garcia'', ''P8901234'', ''Spain'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681274
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681274
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172742904209681274
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 38
    ,p_stmt_num => 94
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (9, ''George'', ''Harris'', ''P9012345'', ''Germany'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681274
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681274
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172743077875681275
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 39
    ,p_stmt_num => 96
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (10, ''Hannah'', ''Ibrahim'', ''P0123456'', ''UAE'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681275
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681275
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172743152051681275
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 40
    ,p_stmt_num => 100
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER passenger_id_trigger BEFORE INSERT ON Passengers FOR EACH ROW BEGIN     SELECT passenger_seq.NEXTVAL INTO :NEW.passenger_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681275
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681277
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172742394098681272
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 32
    ,p_stmt_num => 82
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (3, ''Alice'', ''Johnson'', ''P3456789'', ''Canada'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681272
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681273
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172743205605681277
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 41
    ,p_stmt_num => 105
 ,p_stmt_text => 
'CREATE TABLE Bookings (     booking_id INT PRIMARY KEY,     flight_id INT,     passenger_id INT,     booking_date TIMESTAMP,     seat_class VARCHAR(20),     price DECIMAL(10, 2),     FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),     FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681277
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681280
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172743377008681280
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 42
    ,p_stmt_num => 107
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER booking_id_trigger BEFORE INSERT ON Bookings FOR EACH ROW BEGIN     SELECT booking_seq.NEXTVAL INTO :NEW.booking_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681280
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681282
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172743468920681283
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 43
    ,p_stmt_num => 112
 ,p_stmt_text => 
'CREATE TABLE Crew (     crew_id INT PRIMARY KEY,     first_name VARCHAR(50),     last_name VARCHAR(50),     role VARCHAR(50) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681283
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681285
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172743508171681285
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 44
    ,p_stmt_num => 114
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (1, ''Tom'', ''Johnson'', ''Pilot'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681285
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681287
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172739962903681251
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 8
    ,p_stmt_num => 23
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (4, ''Southwest Airlines'', ''WN'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681251
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681251
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172739622304681248
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 5
    ,p_stmt_num => 17
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (1, ''American Airlines'', ''AA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681248
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681250
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172739710268681250
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 6
    ,p_stmt_num => 19
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (2, ''Delta Airlines'', ''DL'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681250
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681250
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172739897561681250
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 7
    ,p_stmt_num => 21
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (3, ''United Airlines'', ''UA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681250
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681250
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172740080556681251
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 9
    ,p_stmt_num => 25
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (5, ''JetBlue Airways'', ''B6'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681251
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681251
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172740107935681251
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 10
    ,p_stmt_num => 27
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (6, ''Alaska Airlines'', ''AS'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681251
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681251
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172740247624681251
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 11
    ,p_stmt_num => 29
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (7, ''Spirit Airlines'', ''NK'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681252
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681252
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172740332632681252
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 12
    ,p_stmt_num => 31
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (8, ''Frontier Airlines'', ''F9'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681252
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681252
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172740473220681252
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 13
    ,p_stmt_num => 33
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (9, ''Hawaiian Airlines'', ''HA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681252
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681252
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172740512954681252
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 14
    ,p_stmt_num => 35
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (10, ''Allegiant Air'', ''G4'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681252
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681253
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172740690275681253
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 15
    ,p_stmt_num => 39
 ,p_stmt_text => 
'CREATE TABLE Airports (     airport_id INT PRIMARY KEY,     airport_name VARCHAR(100) NOT NULL,     airport_code VARCHAR(10) NOT NULL,     city VARCHAR(50),     country VARCHAR(50) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681253
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681255
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172740716218681255
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 16
    ,p_stmt_num => 41
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (1, ''John F. Kennedy International Airport'', ''JFK'', ''New York'', ''USA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681255
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681257
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172740826840681257
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 17
    ,p_stmt_num => 43
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (2, ''Los Angeles International Airport'', ''LAX'', ''Los Angeles'', ''USA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681257
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681257
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172740910410681257
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 18
    ,p_stmt_num => 45
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (3, ''London Heathrow Airport'', ''LHR'', ''London'', ''UK'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681257
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681258
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172741078167681258
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 19
    ,p_stmt_num => 47
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (4, ''Tokyo Haneda Airport'', ''HND'', ''Tokyo'', ''Japan'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681258
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681258
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172741199033681258
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 20
    ,p_stmt_num => 49
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (5, ''Dubai International Airport'', ''DXB'', ''Dubai'', ''UAE'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681258
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681258
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172741271451681258
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 21
    ,p_stmt_num => 51
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (6, ''Paris Charles de Gaulle Airport'', ''CDG'', ''Paris'', ''France'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681258
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681259
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172741303251681259
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 22
    ,p_stmt_num => 53
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (7, ''Frankfurt Airport'', ''FRA'', ''Frankfurt'', ''Germany'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681259
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681259
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172741491751681259
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 23
    ,p_stmt_num => 55
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (8, ''Singapore Changi Airport'', ''SIN'', ''Singapore'', ''Singapore'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681259
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681259
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172741587572681259
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 24
    ,p_stmt_num => 57
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (9, ''Sydney Kingsford Smith Airport'', ''SYD'', ''Sydney'', ''Australia'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681259
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681260
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172741693984681260
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 25
    ,p_stmt_num => 59
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (10, ''Toronto Pearson International Airport'', ''YYZ'', ''Toronto'', ''Canada'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681260
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681260
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172742130325681270
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 30
    ,p_stmt_num => 78
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (1, ''John'', ''Doe'', ''P1234567'', ''USA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681270
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681272
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172741878684681263
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 27
    ,p_stmt_num => 68
 ,p_stmt_text => 
'CREATE TABLE Flights (     flight_id INT PRIMARY KEY,     airline_id INT,     departure_airport_id INT,     arrival_airport_id INT,     flight_number VARCHAR(10),     departure_time TIMESTAMP,     arrival_time TIMESTAMP,     FOREIGN KEY (airline_id) REFERENCES Airlines(airline_id),     FOREIGN KEY (departure_airport_id) REFERENCES Airports(airport_id),     FOREIGN KEY (arrival_airport_id) REFERENC'||
'ES Airports(airport_id) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681263
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681266
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172741992362681266
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 28
    ,p_stmt_num => 72
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER flight_id_trigger BEFORE INSERT ON Flights FOR EACH ROW BEGIN     SELECT flight_seq.NEXTVAL INTO :NEW.flight_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681266
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681268
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172742023776681268
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 29
    ,p_stmt_num => 76
 ,p_stmt_text => 
'CREATE TABLE Passengers (     passenger_id INT PRIMARY KEY,     first_name VARCHAR(50),     last_name VARCHAR(50),     passport_number VARCHAR(20),     nationality VARCHAR(50) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681268
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681270
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172742292730681272
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 31
    ,p_stmt_num => 80
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (2, ''Jane'', ''Smith'', ''P2345678'', ''UK'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681272
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681272
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172741748640681260
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 26
    ,p_stmt_num => 63
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER airport_id_trigger BEFORE INSERT ON Airports FOR EACH ROW BEGIN     SELECT airport_seq.NEXTVAL INTO :NEW.airport_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681260
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681262
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172739568038681244
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 4
    ,p_stmt_num => 14
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER airline_id_trigger BEFORE INSERT ON Airlines FOR EACH ROW BEGIN     SELECT airline_seq.NEXTVAL INTO :NEW.airline_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681244
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681247
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172739218380681235
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE TABLE users3(     user_id INT NOT NULL,     user_name VARCHAR2(64) NOT NULL,     user_pass VARCHAR2(32) NOT NULL,     user_roll VARCHAR2(30) NOT NULL,     user_activated number default 0,     PRIMARY KEY(user_id) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681235
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681240
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172739398236681240
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 2
    ,p_stmt_num => 3
 ,p_stmt_text => 
'INSERT INTO users3 VALUES(1,''azmi'',''azmi007@@##'',''admin'',''1'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681240
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681242
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38172739444060681242
    ,p_result_id => 38172739166566681234
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 3
    ,p_stmt_num => 9
 ,p_stmt_text => 
'CREATE TABLE Airlines (     airline_id INT PRIMARY KEY,     airline_name VARCHAR(100) NOT NULL,     airline_code VARCHAR(10) NOT NULL )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_start_time => 39681242
    ,p_ended => to_date('202409130945','YYYYMMDDHH24MI')
    ,p_end_time => 39681244
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130945','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 38169049889769939237,
    p_file_id => 38139561311026183622,
    p_job_id => null,
    p_run_by => 'AZMI00121@GMAIL.COM',
    p_run_as => 'WKSP_AZMI',
    p_started => to_date('202409130938','YYYYMMDDHH24MI'),
    p_start_time => 39939238,
    p_ended => to_date('202409130938','YYYYMMDDHH24MI'),
    p_end_time => 39939318,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169049950168939238
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE TABLE users3(     user_id INT NOT NULL,     user_name VARCHAR2(64) NOT NULL,     user_pass VARCHAR2(32) NOT NULL,     user_roll VARCHAR2(30) NOT NULL,     user_activated number default 0,     PRIMARY KEY(user_id) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939238
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939242
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169050030098939242
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 2
    ,p_stmt_num => 3
 ,p_stmt_text => 
'INSERT INTO users3 VALUES(1,''azmi'',''azmi007@@##'',''admin'',''1'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939242
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939244
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169050110679939244
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 3
    ,p_stmt_num => 9
 ,p_stmt_text => 
'CREATE TABLE Airlines (     airline_id INT PRIMARY KEY,     airline_name VARCHAR(100) NOT NULL,     airline_code VARCHAR(10) NOT NULL )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939244
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939247
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169050263331939247
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 4
    ,p_stmt_num => 12
 ,p_stmt_text => 
'CREATE SEQUENCE airline_seq START WITH 1 INCREMENT BY 1'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/17: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939247
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939248
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169050336680939248
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 5
    ,p_stmt_num => 15
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER airline_id_trigger BEFORE INSERT ON Airlines FOR EACH ROW BEGIN     SELECT airline_seq.NEXTVAL INTO :NEW.airline_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939248
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939251
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169050451769939251
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 6
    ,p_stmt_num => 18
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (1, ''American Airlines'', ''AA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939251
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939253
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169050572187939253
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 7
    ,p_stmt_num => 20
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (2, ''Delta Airlines'', ''DL'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939253
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939254
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169050682189939254
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 8
    ,p_stmt_num => 22
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (3, ''United Airlines'', ''UA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939254
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939254
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169050700639939254
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 9
    ,p_stmt_num => 24
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (4, ''Southwest Airlines'', ''WN'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939254
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939254
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169050862715939254
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 10
    ,p_stmt_num => 26
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (5, ''JetBlue Airways'', ''B6'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939254
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939255
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169050993551939255
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 11
    ,p_stmt_num => 28
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (6, ''Alaska Airlines'', ''AS'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939255
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939255
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169051060777939255
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 12
    ,p_stmt_num => 30
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (7, ''Spirit Airlines'', ''NK'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939255
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939255
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169051194972939255
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 13
    ,p_stmt_num => 32
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (8, ''Frontier Airlines'', ''F9'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939255
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939256
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169051272171939256
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 14
    ,p_stmt_num => 34
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (9, ''Hawaiian Airlines'', ''HA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939256
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939256
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169051351550939256
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 15
    ,p_stmt_num => 36
 ,p_stmt_text => 
'INSERT INTO Airlines VALUES (10, ''Allegiant Air'', ''G4'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939256
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939256
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169051428333939256
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 16
    ,p_stmt_num => 40
 ,p_stmt_text => 
'CREATE TABLE Airports (     airport_id INT PRIMARY KEY,     airport_name VARCHAR(100) NOT NULL,     airport_code VARCHAR(10) NOT NULL,     city VARCHAR(50),     country VARCHAR(50) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939256
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939259
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169051581260939259
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 17
    ,p_stmt_num => 42
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (1, ''John F. Kennedy International Airport'', ''JFK'', ''New York'', ''USA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939259
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939261
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169051656554939261
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 18
    ,p_stmt_num => 44
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (2, ''Los Angeles International Airport'', ''LAX'', ''Los Angeles'', ''USA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939261
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939261
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169051797510939261
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 19
    ,p_stmt_num => 46
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (3, ''London Heathrow Airport'', ''LHR'', ''London'', ''UK'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939261
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939261
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169051821264939261
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 20
    ,p_stmt_num => 48
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (4, ''Tokyo Haneda Airport'', ''HND'', ''Tokyo'', ''Japan'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939261
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939262
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169051960036939262
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 21
    ,p_stmt_num => 50
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (5, ''Dubai International Airport'', ''DXB'', ''Dubai'', ''UAE'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939262
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939262
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169052002303939262
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 22
    ,p_stmt_num => 52
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (6, ''Paris Charles de Gaulle Airport'', ''CDG'', ''Paris'', ''France'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939262
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939262
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169052144710939262
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 23
    ,p_stmt_num => 54
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (7, ''Frankfurt Airport'', ''FRA'', ''Frankfurt'', ''Germany'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939262
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939263
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169052259306939263
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 24
    ,p_stmt_num => 56
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (8, ''Singapore Changi Airport'', ''SIN'', ''Singapore'', ''Singapore'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939263
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939263
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169052396995939263
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 25
    ,p_stmt_num => 58
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (9, ''Sydney Kingsford Smith Airport'', ''SYD'', ''Sydney'', ''Australia'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939263
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939263
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169052431463939263
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 26
    ,p_stmt_num => 60
 ,p_stmt_text => 
'INSERT INTO Airports VALUES (10, ''Toronto Pearson International Airport'', ''YYZ'', ''Toronto'', ''Canada'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939263
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939264
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169052567643939264
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 27
    ,p_stmt_num => 62
 ,p_stmt_text => 
'CREATE SEQUENCE airport_seq START WITH 1 INCREMENT BY 1'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/17: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939264
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939264
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169052629720939264
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 28
    ,p_stmt_num => 65
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER airport_id_trigger BEFORE INSERT ON Airports FOR EACH ROW BEGIN     SELECT airport_seq.NEXTVAL INTO :NEW.airport_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939264
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939266
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169052742262939266
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 29
    ,p_stmt_num => 70
 ,p_stmt_text => 
'CREATE TABLE Flights (     flight_id INT PRIMARY KEY,     airline_id INT,     departure_airport_id INT,     arrival_airport_id INT,     flight_number VARCHAR(10),     departure_time TIMESTAMP,     arrival_time TIMESTAMP,     FOREIGN KEY (airline_id) REFERENCES Airlines(airline_id),     FOREIGN KEY (departure_airport_id) REFERENCES Airports(airport_id),     FOREIGN KEY (arrival_airport_id) REFERENC'||
'ES Airports(airport_id) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939266
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939269
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169052879348939269
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 30
    ,p_stmt_num => 72
 ,p_stmt_text => 
'CREATE SEQUENCE flight_seq START WITH 1 INCREMENT BY 1'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/17: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939269
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939270
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169052976233939270
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 31
    ,p_stmt_num => 75
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER flight_id_trigger BEFORE INSERT ON Flights FOR EACH ROW BEGIN     SELECT flight_seq.NEXTVAL INTO :NEW.flight_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939270
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939272
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169053075514939272
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 32
    ,p_stmt_num => 79
 ,p_stmt_text => 
'CREATE TABLE Passengers (     passenger_id INT PRIMARY KEY,     first_name VARCHAR(50),     last_name VARCHAR(50),     passport_number VARCHAR(20),     nationality VARCHAR(50) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939272
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939274
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169053485362939277
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 36
    ,p_stmt_num => 87
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (4, ''Bob'', ''Brown'', ''P4567890'', ''Australia'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939277
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939277
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169053108034939274
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 33
    ,p_stmt_num => 81
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (1, ''John'', ''Doe'', ''P1234567'', ''USA'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939274
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939276
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169053277961939276
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 34
    ,p_stmt_num => 83
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (2, ''Jane'', ''Smith'', ''P2345678'', ''UK'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939276
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939277
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169053366301939277
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 35
    ,p_stmt_num => 85
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (3, ''Alice'', ''Johnson'', ''P3456789'', ''Canada'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939277
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939277
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169053530720939277
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 37
    ,p_stmt_num => 89
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (5, ''Charlie'', ''Davis'', ''P5678901'', ''New Zealand'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939277
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939278
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169053650736939278
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 38
    ,p_stmt_num => 91
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (6, ''Diana'', ''Evans'', ''P6789012'', ''South Africa'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939278
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939278
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169053750503939278
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 39
    ,p_stmt_num => 93
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (7, ''Ethan'', ''Foster'', ''P7890123'', ''Ireland'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939278
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939278
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169053872967939278
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 40
    ,p_stmt_num => 95
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (8, ''Fiona'', ''Garcia'', ''P8901234'', ''Spain'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939278
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939278
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169053928128939279
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 41
    ,p_stmt_num => 97
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (9, ''George'', ''Harris'', ''P9012345'', ''Germany'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939279
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939279
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169054094512939279
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 42
    ,p_stmt_num => 99
 ,p_stmt_text => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality) VALUES (10, ''Hannah'', ''Ibrahim'', ''P0123456'', ''UAE'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939279
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939279
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169054142771939279
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 43
    ,p_stmt_num => 101
 ,p_stmt_text => 
'CREATE SEQUENCE passenger_seq START WITH 1 INCREMENT BY 1'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/17: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939279
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939279
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169054264674939279
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 44
    ,p_stmt_num => 104
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER passenger_id_trigger BEFORE INSERT ON Passengers FOR EACH ROW BEGIN     SELECT passenger_seq.NEXTVAL INTO :NEW.passenger_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939280
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939281
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169054300865939282
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 45
    ,p_stmt_num => 109
 ,p_stmt_text => 
'CREATE TABLE Bookings (     booking_id INT PRIMARY KEY,     flight_id INT,     passenger_id INT,     booking_date TIMESTAMP,     seat_class VARCHAR(20),     price DECIMAL(10, 2),     FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),     FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939282
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939284
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169054452754939284
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 46
    ,p_stmt_num => 111
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER booking_id_trigger BEFORE INSERT ON Bookings FOR EACH ROW BEGIN     SELECT booking_seq.NEXTVAL INTO :NEW.booking_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939284
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939286
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169054501381939286
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 47
    ,p_stmt_num => 116
 ,p_stmt_text => 
'CREATE TABLE Crew (     crew_id INT PRIMARY KEY,     first_name VARCHAR(50),     last_name VARCHAR(50),     role VARCHAR(50) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939286
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939288
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169054948555939291
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 51
    ,p_stmt_num => 124
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (4, ''Emily'', ''Davis'', ''Flight Attendant'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939291
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939291
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169054688324939288
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 48
    ,p_stmt_num => 118
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (1, ''Tom'', ''Johnson'', ''Pilot'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939288
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939290
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169054746783939290
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 49
    ,p_stmt_num => 120
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (2, ''Sarah'', ''Lee'', ''Flight Attendant'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939290
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939290
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169054860106939291
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 50
    ,p_stmt_num => 122
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (3, ''Michael'', ''Smith'', ''Co-Pilot'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939291
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939291
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169055058062939291
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 52
    ,p_stmt_num => 126
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (5, ''James'', ''Brown'', ''Pilot'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939291
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939291
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169055132238939291
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 53
    ,p_stmt_num => 128
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (6, ''Jessica'', ''Wilson'', ''Flight Attendant'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939292
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939292
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169055292042939292
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 54
    ,p_stmt_num => 130
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (7, ''David'', ''Taylor'', ''Co-Pilot'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939292
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939292
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169055302110939292
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 55
    ,p_stmt_num => 132
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (8, ''Laura'', ''Anderson'', ''Flight Attendant'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939292
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939292
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169055472778939292
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 56
    ,p_stmt_num => 134
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (9, ''Robert'', ''Thomas'', ''Pilot'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939292
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939293
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169055586561939293
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 57
    ,p_stmt_num => 136
 ,p_stmt_text => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (10, ''Anna'', ''Moore'', ''Flight Attendant'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939293
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939293
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169055641969939293
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 58
    ,p_stmt_num => 138
 ,p_stmt_text => 
'CREATE SEQUENCE crew_seq START WITH 1 INCREMENT BY 1'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/17: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939293
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939293
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169055709051939293
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 59
    ,p_stmt_num => 141
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER crew_id_trigger BEFORE INSERT ON Crew FOR EACH ROW BEGIN     :NEW.crew_id := crew_seq.NEXTVAL; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939293
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939295
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169055859555939296
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 60
    ,p_stmt_num => 146
 ,p_stmt_text => 
'CREATE TABLE Flight_Crew (     flight_id INT,     crew_id INT,     first_name VARCHAR(50),     role VARCHAR(50),     FOREIGN KEY (flight_id) REFERENCES Flights(flight_id) ON DELETE CASCADE,     FOREIGN KEY (crew_id) REFERENCES Crew(crew_id) ON DELETE CASCADE,     PRIMARY KEY (flight_id, crew_id) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939296
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939298
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169055924245939298
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 61
    ,p_stmt_num => 151
 ,p_stmt_text => 
'CREATE TABLE Payments (     payment_id INT PRIMARY KEY,     booking_id INT,     payment_date TIMESTAMP,     amount DECIMAL(10, 2),     payment_method VARCHAR(20),     FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939298
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939300
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169056056709939300
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 62
    ,p_stmt_num => 153
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER payment_id_trigger BEFORE INSERT ON Payments FOR EACH ROW BEGIN     SELECT payment_seq.NEXTVAL INTO :NEW.payment_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939301
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939302
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169056114595939303
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 63
    ,p_stmt_num => 158
 ,p_stmt_text => 
'CREATE TABLE Flight_Status (     status_id INT PRIMARY KEY,     flight_id INT,     status VARCHAR(20),     updated_time TIMESTAMP,     FOREIGN KEY (flight_id) REFERENCES Flights(flight_id) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939303
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939305
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169056205091939305
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 64
    ,p_stmt_num => 160
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER flight_status_id_trigger BEFORE INSERT ON Flight_Status FOR EACH ROW BEGIN     SELECT flight_status_seq.NEXTVAL INTO :NEW.status_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939305
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939307
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169056651158939312
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 68
    ,p_stmt_num => 171
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (3, ''Ticket Sale'', 2500.00, TO_TIMESTAMP(''2024-08-10 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939312
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939312
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169056360661939307
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 65
    ,p_stmt_num => 165
 ,p_stmt_text => 
'CREATE TABLE Financial_Transactions (     transaction_id INT PRIMARY KEY,     transaction_type VARCHAR(50),     amount DECIMAL(10, 2),     transaction_date TIMESTAMP )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939307
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939309
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169056458074939310
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 66
    ,p_stmt_num => 167
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (1, ''Ticket Sale'', 500.00, TO_TIMESTAMP(''2024-08-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939310
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939311
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169056537579939311
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 67
    ,p_stmt_num => 169
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (2, ''Ticket Sale'', 1500.00, TO_TIMESTAMP(''2024-08-05 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939311
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939312
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169056728958939312
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 69
    ,p_stmt_num => 173
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (4, ''Ticket Sale'', 600.00, TO_TIMESTAMP(''2024-08-15 18:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939312
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939312
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169056895219939312
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 70
    ,p_stmt_num => 175
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (5, ''Ticket Sale'', 1600.00, TO_TIMESTAMP(''2024-08-20 20:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939312
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939313
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169057078364939313
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 71
    ,p_stmt_num => 177
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (6, ''Ticket Sale'', 2600.00, TO_TIMESTAMP(''2024-08-25 22:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939313
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939313
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169057113057939313
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 72
    ,p_stmt_num => 179
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (7, ''Ticket Sale'', 700.00, TO_TIMESTAMP(''2024-08-30 10:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939313
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939313
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169057297229939313
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 73
    ,p_stmt_num => 181
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (8, ''Ticket Sale'', 1700.00, TO_TIMESTAMP(''2024-09-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939313
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939314
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169057393677939314
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 74
    ,p_stmt_num => 183
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (9, ''Ticket Sale'', 2700.00, TO_TIMESTAMP(''2024-09-05 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939314
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939314
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169057472434939314
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 75
    ,p_stmt_num => 185
 ,p_stmt_text => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (10, ''Ticket Sale'', 800.00, TO_TIMESTAMP(''2024-09-10 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''))'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939314
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939314
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169057553539939314
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 76
    ,p_stmt_num => 187
 ,p_stmt_text => 
'CREATE SEQUENCE financial_transaction_seq START WITH 1 INCREMENT BY 1'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/17: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939314
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939314
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169057642047939315
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 77
    ,p_stmt_num => 190
 ,p_stmt_text => 
'CREATE OR REPLACE TRIGGER financial_transaction_id_trigger BEFORE INSERT ON Financial_Transactions FOR EACH ROW BEGIN     SELECT financial_transaction_seq.NEXTVAL INTO :NEW.transaction_id FROM dual; END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939315
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939316
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 38169057752209939317
    ,p_result_id => 38169049889769939237
    ,p_file_id => 38139561311026183622
    ,p_seq_id => 78
    ,p_stmt_num => 194
 ,p_stmt_text => 
'COMMIT'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Statement processed.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_start_time => 39939317
    ,p_ended => to_date('202409130938','YYYYMMDDHH24MI')
    ,p_end_time => 39939317
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202409130938','YYYYMMDDHH24MI'));
end;
/
----------------
--sql commands
--
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38100469907443598841
 ,p_command => 
'CREATE TABLE Airports ('||wwv_flow.LF||
'    airport_id INT PRIMARY KEY,'||wwv_flow.LF||
'    airport_name VARCHAR(100) NOT NULL,'||wwv_flow.LF||
'    airport_code VARCHAR(10) NOT NULL,'||wwv_flow.LF||
'    city VARCHAR(50),'||wwv_flow.LF||
'    country VARCHAR(50)'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130644','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38100471607316599235
 ,p_command => 
'INSERT INTO Airports VALUES (1, ''John F. Kennedy International Airport'', ''JFK'', ''New York'', ''USA'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130644','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38100472353530600078
 ,p_command => 
'INSERT INTO Airports VALUES (3, ''London Heathrow Airport'', ''LHR'', ''London'', ''UK'');'||wwv_flow.LF||
'INSERT INTO Airports VALUES (4, ''Tokyo Haneda Airport'', ''HND'', ''Tokyo'', ''Japan'');'||wwv_flow.LF||
'INSERT INTO Airports VALUES (5, ''Dubai International Airport'', ''DXB'', ''Dubai'', ''UAE'');'||wwv_flow.LF||
'INSERT INTO Airports VALUES (6, ''Paris Charles de Gaulle Airport'', ''CDG'', ''Paris'', ''France'');'||wwv_flow.LF||
'INSERT INTO Airports VALUES (7, ''Frankfurt Airport'', '''||
'FRA'', ''Frankfurt'', ''Germany'');'||wwv_flow.LF||
'INSERT INTO Airports VALUES (8, ''Singapore Changi Airport'', ''SIN'', ''Singapore'', ''Singapore'');'||wwv_flow.LF||
'INSERT INTO Airports VALUES (9, ''Sydney Kingsford Smith Airport'', ''SYD'', ''Sydney'', ''Australia'');'||wwv_flow.LF||
'INSERT INTO Airports VALUES (10, ''Toronto Pearson International Airport'', ''YYZ'', ''Toronto'', ''Canada'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130645','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38101168942173901387
 ,p_command => 
'INSERT INTO Airports VALUES (2, ''Los Angeles International Airport'', ''LAX'', ''Los Angeles'', ''USA'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130645','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38102112754865930319
 ,p_command => 
'INSERT INTO Bookings (booking_id, flight_id, passenger_id, booking_date, seat_class, price)'||wwv_flow.LF||
'VALUES (1, 1, 1, TO_TIMESTAMP(''2024-08-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''), ''Economy'', 500.00);'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130649','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38102439689006946305
 ,p_command => 
'INSERT INTO Flights VALUES (2, 2, 2, 3, ''DL202'', TO_TIMESTAMP(''2024-09-01 09:00:00'', ''YYYY-MM-DD HH24:MI:SS''), TO_TIMESTAMP(''2024-09-01 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130652','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38102472181648950009
 ,p_command => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (1, 1);'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130653','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38102488977777953822
 ,p_command => 
'INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method)'||wwv_flow.LF||
'VALUES (1, 1, TO_TIMESTAMP(''2024-08-02 10:00:00'', ''YYYY-MM-DD HH24:MI:SS''), 500.00, ''Credit Card'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130653','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38102495132068956096
 ,p_command => 
'CREATE SEQUENCE payment_seq START WITH 1 INCREMENT BY 1;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130654','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38102978070160653341
 ,p_command => 
'CREATE SEQUENCE payment_seq START WITH 1 INCREMENT BY 1;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130653','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38103090766034653855
 ,p_command => 
'CREATE OR REPLACE TRIGGER payment_id_trigger'||wwv_flow.LF||
'BEFORE INSERT ON Payments'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT payment_seq.NEXTVAL INTO :NEW.payment_id FROM dual;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130654','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38137974061064465214
 ,p_command => 
'DROP TABLE Flight_Status;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130819','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38139445928738165026
 ,p_command => 
'DROP TABLE Crew;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130819','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38139457166389167601
 ,p_command => 
'DROP TABLE Users;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130819','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38144681241146283743
 ,p_command => 
'CREATE TABLE "USERS_LOG"'||wwv_flow.LF||
'('||wwv_flow.LF||
'    "LOG_ID"        NUMBER,'||wwv_flow.LF||
'    "IP_ADDRESS"    VARCHAR2 (30),'||wwv_flow.LF||
'    "LOGIN_USER"    VARCHAR2 (30),'||wwv_flow.LF||
'    "LOGIN_TIME"    TIMESTAMP (6),'||wwv_flow.LF||
'    "LOG_DATE"      DATE'||wwv_flow.LF||
')'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130839','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38144686537432284746
 ,p_command => 
'ENABLE ROW MOVEMENT'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130839','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38144708351996285328
 ,p_command => 
'CREATE TABLE "E_LOG"'||wwv_flow.LF||
'('||wwv_flow.LF||
'    "PID"         NUMBER,'||wwv_flow.LF||
'    "MSG"         NVARCHAR2 (300),'||wwv_flow.LF||
'    "ERR_DATE"    DATE DEFAULT SYSDATE'||wwv_flow.LF||
')'||wwv_flow.LF||
'ENABLE ROW MOVEMENT'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130839','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38144720418162289470
 ,p_command => 
'CREATE TABLE "USER_GROUP_MY_STOCK"'||wwv_flow.LF||
'('||wwv_flow.LF||
'    "PID"          NUMBER NOT NULL ENABLE,'||wwv_flow.LF||
'    "PID_USER"     NUMBER NOT NULL ENABLE,'||wwv_flow.LF||
'    "PID_GROUP"    NUMBER NOT NULL ENABLE'||wwv_flow.LF||
')'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130840','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38144728426442290176
 ,p_command => 
'CREATE TABLE "IS_ACTIVATE"'||wwv_flow.LF||
'('||wwv_flow.LF||
'    "OID"       NUMBER,'||wwv_flow.LF||
'    "STATUS"    VARCHAR2 (30),'||wwv_flow.LF||
'    CONSTRAINT "IS_ACTIVATE_PK" PRIMARY KEY ("OID") USING INDEX ENABLE'||wwv_flow.LF||
')'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130840','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38144786485998296565
 ,p_command => 
'CREATE SEQUENCE   "LOGIN_LOG_ID_SEC"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 8692285 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBALCREATE SEQUENCE   "MY_USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 361 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130841','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145232550079586032
 ,p_command => 
'CREATE TABLE "E_LOG"'||wwv_flow.LF||
'('||wwv_flow.LF||
'    "PID"         NUMBER,'||wwv_flow.LF||
'    "MSG"         NVARCHAR2 (300),'||wwv_flow.LF||
'    "ERR_DATE"    DATE DEFAULT SYSDATE'||wwv_flow.LF||
')'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130839','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145443661472303075
 ,p_command => 
'CREATE SEQUENCE   "MY_USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 361 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130842','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145450370720305388
 ,p_command => 
'CREATE SEQUENCE   "LOGIN_LOG_ID_SEC"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 8692285 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130842','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145536355569315364
 ,p_command => 
''||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE PACKAGE BODY USER_AUTH_IP AS FUNCTION CUSTOM_AUTH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'                   RETURN BOOLEAN'||wwv_flow.LF||
'                IS'||wwv_flow.LF||
'                   L_PASSWORD          VARCHAR2 (4000);'||wwv_flow.LF||
'                   L_STORED_PASSWORD   VARCHAR2 (4000);'||wwv_flow.LF||
'                   v_Time VARCHAR2 (6);'||wwv_flow.LF||
'                   v_ADDR VARCHAR2 (100);'||wwv_flow.LF||
'                   v_LOGIN_ID VARCHAR2 ('||
'100);'||wwv_flow.LF||
'                BEGIN'||wwv_flow.LF||
'                  IF P_USERNAME IS NULL AND P_PASSWORD IS NULL THEN'||wwv_flow.LF||
'                     APEX_UTIL.Set_Session_State(''LOGIN_MESSAGE'',''Please enter Username & password.'');'||wwv_flow.LF||
'                     RETURN FALSE;      END IF;'||wwv_flow.LF||
'                 SELECT'||wwv_flow.LF||
'            NVL(ROUND(TO_NUMBER(TO_CHAR(MAX(SESSION_IDLE_TIMEOUT_ON),''SSSSS'')/60)),0) - ROUND( TO_NUMBER(TO_CHAR(SYSDATE,''SSSSS'')'||
'/60)) INTO v_Time'||wwv_flow.LF||
'                FROM apex_workspace_sessions WHERE USER_NAME=(SELECT DISTINCT USER_NAME FROM apex_workspace_sessions WHERE USER_NAME=UPPER(P_USERNAME));'||wwv_flow.LF||
'                       IF v_Time > 1  THEN'||wwv_flow.LF||
'                       SELECT REMOTE_ADDR INTO v_ADDR  FROM apex_workspace_sessions WHERE USER_NAME=UPPER(P_USERNAME) AND ROWNUM=1;'||wwv_flow.LF||
'                       ELSE NULL;'||wwv_flow.LF||
'                    '||
'   END IF;'||wwv_flow.LF||
'                       SELECT PIN'||wwv_flow.LF||
'                        INTO L_STORED_PASSWORD'||wwv_flow.LF||
'                         Return False;     END If;'||wwv_flow.LF||
''||wwv_flow.LF||
'                   IF L_PASSWORD                     = L_STORED_PASSWORD'||wwv_flow.LF||
'                   THEN'||wwv_flow.LF||
'                     insert into USERS_LOG (LOG_ID,IP_ADDRESS,LOGIN_USER,LOGIN_TIME)'||wwv_flow.LF||
'                RETURN TRUE;'||wwv_flow.LF||
'                END IF;'||wwv_flow.LF||
'                END;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130844','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145546594965317595
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY USER_AUTH_IP AS '||wwv_flow.LF||
'    FUNCTION CUSTOM_AUTH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'        RETURN BOOLEAN'||wwv_flow.LF||
'    IS'||wwv_flow.LF||
'        L_PASSWORD          VARCHAR2 (4000);'||wwv_flow.LF||
'        L_STORED_PASSWORD   VARCHAR2 (4000);'||wwv_flow.LF||
'        v_Time              NUMBER;'||wwv_flow.LF||
'        v_ADDR              VARCHAR2 (100);'||wwv_flow.LF||
'        v_LOGIN_ID          VARCHAR2 (100);'||wwv_flow.LF||
'    BEGIN'||wwv_flow.LF||
'        IF P_USERNAME IS NULL '||
'AND P_PASSWORD IS NULL THEN'||wwv_flow.LF||
'            APEX_UTIL.Set_Session_State(''LOGIN_MESSAGE'', ''Please enter Username & password.'');'||wwv_flow.LF||
'            RETURN FALSE;'||wwv_flow.LF||
'        END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'        SELECT NVL(ROUND(TO_NUMBER(TO_CHAR(MAX(SESSION_IDLE_TIMEOUT_ON), ''SSSSS'') / 60)), 0) - ROUND(TO_NUMBER(TO_CHAR(SYSDATE, ''SSSSS'') / 60))'||wwv_flow.LF||
'        INTO v_Time'||wwv_flow.LF||
'        FROM apex_workspace_sessions '||wwv_flow.LF||
'        WHERE USER_NAME = (SELEC'||
'T DISTINCT USER_NAME FROM apex_workspace_sessions WHERE USER_NAME = UPPER(P_USERNAME));'||wwv_flow.LF||
''||wwv_flow.LF||
'        IF v_Time > 1 THEN'||wwv_flow.LF||
'            SELECT REMOTE_ADDR '||wwv_flow.LF||
'            INTO v_ADDR  '||wwv_flow.LF||
'            FROM apex_workspace_sessions '||wwv_flow.LF||
'            WHERE USER_NAME = UPPER(P_USERNAME) AND ROWNUM = 1;'||wwv_flow.LF||
'        ELSE'||wwv_flow.LF||
'            NULL;'||wwv_flow.LF||
'        END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'        SELECT PIN'||wwv_flow.LF||
'        INTO L_STORED_PASSWORD'||wwv_flow.LF||
'        FROM USERS'||wwv_flow.LF||
'   '||
'     WHERE USERNAME = UPPER(P_USERNAME);'||wwv_flow.LF||
''||wwv_flow.LF||
'        IF L_PASSWORD = L_STORED_PASSWORD THEN'||wwv_flow.LF||
'            INSERT INTO USERS_LOG (LOG_ID, IP_ADDRESS, LOGIN_USER, LOGIN_TIME)'||wwv_flow.LF||
'            VALUES (LOGIN_LOG_ID_SEC.NEXTVAL, v_ADDR, UPPER(P_USERNAME), SYSDATE);'||wwv_flow.LF||
'            RETURN TRUE;'||wwv_flow.LF||
'        ELSE'||wwv_flow.LF||
'            RETURN FALSE;'||wwv_flow.LF||
'        END IF;'||wwv_flow.LF||
'    END;'||wwv_flow.LF||
'END USER_AUTH_IP;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130844','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145586898324326781
 ,p_command => 
'CREATE OR REPLACE PACKAGE USER_AUTH_IP'||wwv_flow.LF||
'AS'||wwv_flow.LF||
'    FUNCTION CUSTOM_AUTH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'        RETURN BOOLEAN;'||wwv_flow.LF||
''||wwv_flow.LF||
'    FUNCTION CUSTOM_HASH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'        RETURN VARCHAR2;'||wwv_flow.LF||
'END;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130846','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145675744969606534
 ,p_command => 
'CREATE SEQUENCE   "USERS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130842','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38146180148028630273
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY USER_AUTH_IP AS FUNCTION CUSTOM_AUTH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'                   RETURN BOOLEAN'||wwv_flow.LF||
'                IS'||wwv_flow.LF||
'                   L_PASSWORD          VARCHAR2 (4000);'||wwv_flow.LF||
'                   L_STORED_PASSWORD   VARCHAR2 (4000);'||wwv_flow.LF||
'                   v_Time VARCHAR2 (6);'||wwv_flow.LF||
'                   v_ADDR VARCHAR2 (100);'||wwv_flow.LF||
'                   v_LOGIN_ID VARCHAR2 (10'||
'0);'||wwv_flow.LF||
'                BEGIN'||wwv_flow.LF||
'                  IF P_USERNAME IS NULL AND P_PASSWORD IS NULL THEN'||wwv_flow.LF||
'                     APEX_UTIL.Set_Session_State(''LOGIN_MESSAGE'',''Please enter Username & password.'');'||wwv_flow.LF||
'                     RETURN FALSE;      END IF;'||wwv_flow.LF||
'                 SELECT'||wwv_flow.LF||
'            NVL(ROUND(TO_NUMBER(TO_CHAR(MAX(SESSION_IDLE_TIMEOUT_ON),''SSSSS'')/60)),0) - ROUND( TO_NUMBER(TO_CHAR(SYSDATE,''SSSSS'')/6'||
'0)) INTO v_Time'||wwv_flow.LF||
'                FROM apex_workspace_sessions WHERE USER_NAME=(SELECT DISTINCT USER_NAME FROM apex_workspace_sessions WHERE USER_NAME=UPPER(P_USERNAME));'||wwv_flow.LF||
'                       IF v_Time > 1  THEN'||wwv_flow.LF||
'                       SELECT REMOTE_ADDR INTO v_ADDR  FROM apex_workspace_sessions WHERE USER_NAME=UPPER(P_USERNAME) AND ROWNUM=1;'||wwv_flow.LF||
'                       ELSE NULL;'||wwv_flow.LF||
'                      '||
' END IF;'||wwv_flow.LF||
'                       SELECT PIN'||wwv_flow.LF||
'                        INTO L_STORED_PASSWORD'||wwv_flow.LF||
'                         Return False;     END If;'||wwv_flow.LF||
''||wwv_flow.LF||
'                   IF L_PASSWORD                     = L_STORED_PASSWORD'||wwv_flow.LF||
'                   THEN'||wwv_flow.LF||
'                     insert into USERS_LOG (LOG_ID,IP_ADDRESS,LOGIN_USER,LOGIN_TIME)'||wwv_flow.LF||
'                RETURN TRUE;'||wwv_flow.LF||
'                END IF;'||wwv_flow.LF||
'                END;'||wwv_flow.LF||
''||wwv_flow.LF||
'F'||
'UNCTION CUSTOM_HASH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'    RETURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'    L_PASSWORD   VARCHAR2 (4000);'||wwv_flow.LF||
'    L_SALT       VARCHAR2 (4000) := ''D9GE4CORSJZVKADPOJ5C1PERC704WB'';'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    L_PASSWORD :='||wwv_flow.LF||
'        UTL_RAW.CAST_TO_RAW ('||wwv_flow.LF||
'            DBMS_OBFUSCATION_TOOLKIT.MD5 (INPUT_STRING => P_PASSWORD)) RETURN       L_PASSWORD;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'                END;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130846','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38146584624782338450
 ,p_command => 
'CREATE OR REPLACE PACKAGE "ACL"'||wwv_flow.LF||
'AS'||wwv_flow.LF||
'    FUNCTION CUSTOM_AUTH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'        RETURN BOOLEAN;'||wwv_flow.LF||
''||wwv_flow.LF||
'    FUNCTION CUSTOM_HASH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'        RETURN VARCHAR2;'||wwv_flow.LF||
'END;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130848','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38147012160280649036
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE TRIGGER  "AUTO_USER_GROUP_MY_STOCK" '||wwv_flow.LF||
'              after INSERT'||wwv_flow.LF||
'              ON MY_USERS   REFERENCING NEW AS NEW OLD AS OLD'||wwv_flow.LF||
'              FOR EACH ROW'||wwv_flow.LF||
'            DECLARe'||wwv_flow.LF||
'            begin'||wwv_flow.LF||
'             INSERT INTO USER_GROUP_MY_STOCK (PID, PID_USER, PID_GROUP, IS_ACTIVE, INSERT_BY, INSERT_DATE, UPDATE_BY, UPDATE_DATE)'||wwv_flow.LF||
'            EXCEPTION'||wwv_flow.LF||
'              WHEN OTHERS'||wwv_flow.LF||
''||
'              THEN'||wwv_flow.LF||
'                 RAISE;'||wwv_flow.LF||
'            END;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130849','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38149734589543382963
 ,p_command => 
''||wwv_flow.LF||
'DROP TABLE Passengers;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130855','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38149734773988383393
 ,p_command => 
'DROP TABLE Airports;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130855','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38149871061441684458
 ,p_command => 
'DROP TABLE Bookings;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130855','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38149873611097685513
 ,p_command => 
'DROP TABLE Flights;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130855','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38150256395261712075
 ,p_command => 
'CREATE TABLE Airlines ('||wwv_flow.LF||
'    airline_id INT PRIMARY KEY,'||wwv_flow.LF||
'    airline_name VARCHAR(100) NOT NULL,'||wwv_flow.LF||
'    airline_code VARCHAR(10) NOT NULL'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130900','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38150649547181726242
 ,p_command => 
'INSERT INTO Airlines VALUES (3, ''United Airlines'', ''UA'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130902','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38150677641563728872
 ,p_command => 
'INSERT INTO Airlines VALUES (9, ''Hawaiian Airlines'', ''HA'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130902','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38150678257342729234
 ,p_command => 
'INSERT INTO Airlines VALUES (10, ''Allegiant Air'', ''G4'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130903','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38151725044379423066
 ,p_command => 
'CREATE OR REPLACE TRIGGER airline_id_trigger'||wwv_flow.LF||
'BEFORE INSERT ON Airlines'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT airline_seq.NEXTVAL INTO :NEW.airline_id FROM dual;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130902','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38151727482403423636
 ,p_command => 
'INSERT INTO Airlines VALUES (1, ''American Airlines'', ''AA'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130902','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38151730170832424048
 ,p_command => 
'INSERT INTO Airlines VALUES (2, ''Delta Airlines'', ''DL'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130902','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38151732670269424792
 ,p_command => 
'INSERT INTO Airlines VALUES (4, ''Southwest Airlines'', ''WN'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130902','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38152346399111435725
 ,p_command => 
'INSERT INTO Airports VALUES (6, ''Paris Charles de Gaulle Airport'', ''CDG'', ''Paris'', ''France'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130904','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38152347113250436048
 ,p_command => 
'INSERT INTO Airports VALUES (7, ''Frankfurt Airport'', ''FRA'', ''Frankfurt'', ''Germany'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130904','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38152347622172436393
 ,p_command => 
'INSERT INTO Airports VALUES (8, ''Singapore Changi Airport'', ''SIN'', ''Singapore'', ''Singapore'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130904','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38152348408680436817
 ,p_command => 
'INSERT INTO Airports VALUES (9, ''Sydney Kingsford Smith Airport'', ''SYD'', ''Sydney'', ''Australia'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130904','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38152387992645442846
 ,p_command => 
'CREATE OR REPLACE TRIGGER flight_id_trigger'||wwv_flow.LF||
'BEFORE INSERT ON Flights'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT flight_seq.NEXTVAL INTO :NEW.flight_id FROM dual;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130905','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38152389024673443220
 ,p_command => 
'CREATE SEQUENCE flight_seq START WITH 1 INCREMENT BY 1;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130905','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38152741277166736220
 ,p_command => 
'INSERT INTO Airports VALUES (2, ''Los Angeles International Airport'', ''LAX'', ''Los Angeles'', ''USA'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130904','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38152773307912736521
 ,p_command => 
'INSERT INTO Airports VALUES (3, ''London Heathrow Airport'', ''LHR'', ''London'', ''UK'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130904','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38153106783690743312
 ,p_command => 
'INSERT INTO Flights (flight_id, airline_id, departure_airport_id, arrival_airport_id, flight_number, departure_time, arrival_time) VALUES (1, 1, 1, 2, ''AA101'', TO_TIMESTAMP(''2024-09-01 08:00:00'', ''YYYY-MM-DD HH24:MI:SS''), TO_TIMESTAMP(''2024-09-01 11:00:00'', ''YYYY-MM-DD HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130905','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38103299748976655131
 ,p_command => 
'INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method)'||wwv_flow.LF||
'VALUES (2, 2, TO_TIMESTAMP(''2024-08-06 11:00:00'', ''YYYY-MM-DD HH24:MI:SS''), 1500.00, ''PayPal'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130654','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38111571761037060684
 ,p_command => 
'select role from Users where upper(username)=V(''USER'') and role in (''admin'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130711','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38111580406887061822
 ,p_command => 
'select role from Users where upper(username)=V(''AZMI'') and role in (''admin'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130711','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38137972549570464646
 ,p_command => 
'DROP TABLE Financial_Transactions;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130818','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38137975543250465627
 ,p_command => 
'DROP TABLE Payments;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130819','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38137980682510466375
 ,p_command => 
'DROP TABLE Flight_Crew;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130819','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38137991272249468305
 ,p_command => 
'DROP TABLE Flights;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130819','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38139453564436165666
 ,p_command => 
'DROP TABLE Bookings;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130819','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38139454724004166140
 ,p_command => 
'DROP TABLE Passengers;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130819','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38139456560431166877
 ,p_command => 
'DROP TABLE Airports;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130819','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38139456846570167236
 ,p_command => 
'DROP TABLE Airlines;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130819','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38144716528257287573
 ,p_command => 
'ENABLE ROW MOVEMENT'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE TABLE "USER_GROUP"'||wwv_flow.LF||
'('||wwv_flow.LF||
'    "OID"                  NUMBER,'||wwv_flow.LF||
'    "PID_PARENT"           NUMBER,'||wwv_flow.LF||
'    "GROUP_TITLE"          NVARCHAR2 (30),'||wwv_flow.LF||
'    "GROUP_DESCRIPTION"    NVARCHAR2 (250)'||wwv_flow.LF||
')'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130839','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145442435557302624
 ,p_command => 
'CREATE SEQUENCE   "LOGIN_LOG_ID_SEC"  MINVALUE 0 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 8692285 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130842','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38144778870393294668
 ,p_command => 
'CREATE SEQUENCE   "MY_USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 361 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130840','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145226094024584811
 ,p_command => 
'CREATE TABLE "MY_USERS"'||wwv_flow.LF||
'('||wwv_flow.LF||
'    "USER_ID"          NUMBER,'||wwv_flow.LF||
'    "USERNAME"         VARCHAR2 (50),'||wwv_flow.LF||
'    "FULL_NAME"        VARCHAR2 (100),'||wwv_flow.LF||
'    "PHONE_NUMBER"     NUMBER (11, 0),'||wwv_flow.LF||
'    "EMAIL_ADDRESS"    VARCHAR2 (50),'||wwv_flow.LF||
'    "IMAGE"            BLOB,'||wwv_flow.LF||
'    "IS_ACTIVE"        VARCHAR2 (10),'||wwv_flow.LF||
'    "PIN"              VARCHAR2 (100),'||wwv_flow.LF||
'    CONSTRAINT "MY_USERS_PK" PRIMARY KEY ("USER_ID") USING INDEX ENABLE'||wwv_flow.LF||
')'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130838','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145248617058590835
 ,p_command => 
'CREATE TABLE "USER_GROUP"'||wwv_flow.LF||
'('||wwv_flow.LF||
'    "OID"                  NUMBER,'||wwv_flow.LF||
'    "PID_PARENT"           NUMBER,'||wwv_flow.LF||
'    "GROUP_TITLE"          NVARCHAR2 (30),'||wwv_flow.LF||
'    "GROUP_DESCRIPTION"    NVARCHAR2 (250)'||wwv_flow.LF||
')'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130839','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145302736915596915
 ,p_command => 
'CREATE SEQUENCE   "USERS_LOG_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 248 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130840','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145304015916597366
 ,p_command => 
'CREATE SEQUENCE   "USERS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130841','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145306511588597830
 ,p_command => 
'CREATE SEQUENCE   "USER_GROUP_MY_STOCK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130841','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145446847811304289
 ,p_command => 
'CREATE SEQUENCE   "USERS_LOG_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 248 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130842','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145449327205305069
 ,p_command => 
'CREATE SEQUENCE   "USER_GROUP_MY_STOCK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130842','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145473855067308565
 ,p_command => 
'CREATE OR REPLACE PACKAGE USER_AUTH_IP'||wwv_flow.LF||
'AS'||wwv_flow.LF||
'    FUNCTION CUSTOM_AUTH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'        RETURN BOOLEAN;'||wwv_flow.LF||
''||wwv_flow.LF||
'    FUNCTION CUSTOM_HASH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'        RETURN VARCHAR2;'||wwv_flow.LF||
'END;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130843','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145506061142309389
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY USER_AUTH_IP AS FUNCTION CUSTOM_AUTH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'                   RETURN BOOLEAN'||wwv_flow.LF||
'                IS'||wwv_flow.LF||
'                   L_PASSWORD          VARCHAR2 (4000);'||wwv_flow.LF||
'                   L_STORED_PASSWORD   VARCHAR2 (4000);'||wwv_flow.LF||
'                   v_Time VARCHAR2 (6);'||wwv_flow.LF||
'                   v_ADDR VARCHAR2 (100);'||wwv_flow.LF||
'                   v_LOGIN_ID VARCHAR2 (10'||
'0);'||wwv_flow.LF||
'                BEGIN'||wwv_flow.LF||
'                  IF P_USERNAME IS NULL AND P_PASSWORD IS NULL THEN'||wwv_flow.LF||
'                     APEX_UTIL.Set_Session_State(''LOGIN_MESSAGE'',''Please enter Username & password.'');'||wwv_flow.LF||
'                     RETURN FALSE;      END IF;'||wwv_flow.LF||
'                 SELECT'||wwv_flow.LF||
'            NVL(ROUND(TO_NUMBER(TO_CHAR(MAX(SESSION_IDLE_TIMEOUT_ON),''SSSSS'')/60)),0) - ROUND( TO_NUMBER(TO_CHAR(SYSDATE,''SSSSS'')/6'||
'0)) INTO v_Time'||wwv_flow.LF||
'                FROM apex_workspace_sessions WHERE USER_NAME=(SELECT DISTINCT USER_NAME FROM apex_workspace_sessions WHERE USER_NAME=UPPER(P_USERNAME));'||wwv_flow.LF||
'                       IF v_Time > 1  THEN'||wwv_flow.LF||
'                       SELECT REMOTE_ADDR INTO v_ADDR  FROM apex_workspace_sessions WHERE USER_NAME=UPPER(P_USERNAME) AND ROWNUM=1;'||wwv_flow.LF||
'                       ELSE NULL;'||wwv_flow.LF||
'                      '||
' END IF;'||wwv_flow.LF||
'                       SELECT PIN'||wwv_flow.LF||
'                        INTO L_STORED_PASSWORD'||wwv_flow.LF||
'                         Return False;     END If;'||wwv_flow.LF||
''||wwv_flow.LF||
'                   IF L_PASSWORD                     = L_STORED_PASSWORD'||wwv_flow.LF||
'                   THEN'||wwv_flow.LF||
'                     insert into USERS_LOG (LOG_ID,IP_ADDRESS,LOGIN_USER,LOGIN_TIME)'||wwv_flow.LF||
'                RETURN TRUE;'||wwv_flow.LF||
'                END IF;'||wwv_flow.LF||
'                END;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130843','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38145550464775319290
 ,p_command => 
'CREATE OR REPLACE PACKAGE USER_AUTH_IP'||wwv_flow.LF||
'AS'||wwv_flow.LF||
'    FUNCTION CUSTOM_AUTH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'        RETURN BOOLEAN;'||wwv_flow.LF||
''||wwv_flow.LF||
'    FUNCTION CUSTOM_HASH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'        RETURN VARCHAR2;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE PACKAGE BODY USER_AUTH_IP AS FUNCTION CUSTOM_AUTH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'                   RETURN BOOLEAN'||wwv_flow.LF||
'                IS'||wwv_flow.LF||
'  '||
'                 L_PASSWORD          VARCHAR2 (4000);'||wwv_flow.LF||
'                   L_STORED_PASSWORD   VARCHAR2 (4000);'||wwv_flow.LF||
'                   v_Time VARCHAR2 (6);'||wwv_flow.LF||
'                   v_ADDR VARCHAR2 (100);'||wwv_flow.LF||
'                   v_LOGIN_ID VARCHAR2 (100);'||wwv_flow.LF||
'                BEGIN'||wwv_flow.LF||
'                  IF P_USERNAME IS NULL AND P_PASSWORD IS NULL THEN'||wwv_flow.LF||
'                     APEX_UTIL.Set_Session_State(''LOGIN_MESSAGE'',''Please'||
' enter Username & password.'');'||wwv_flow.LF||
'                     RETURN FALSE;      END IF;'||wwv_flow.LF||
'                 SELECT'||wwv_flow.LF||
'            NVL(ROUND(TO_NUMBER(TO_CHAR(MAX(SESSION_IDLE_TIMEOUT_ON),''SSSSS'')/60)),0) - ROUND( TO_NUMBER(TO_CHAR(SYSDATE,''SSSSS'')/60)) INTO v_Time'||wwv_flow.LF||
'                FROM apex_workspace_sessions WHERE USER_NAME=(SELECT DISTINCT USER_NAME FROM apex_workspace_sessions WHERE USER_NAME=UPPER(P_USERNAME)'||
');'||wwv_flow.LF||
'                       IF v_Time > 1  THEN'||wwv_flow.LF||
'                       SELECT REMOTE_ADDR INTO v_ADDR  FROM apex_workspace_sessions WHERE USER_NAME=UPPER(P_USERNAME) AND ROWNUM=1;'||wwv_flow.LF||
'                       ELSE NULL;'||wwv_flow.LF||
'                       END IF;'||wwv_flow.LF||
'                       SELECT PIN'||wwv_flow.LF||
'                        INTO L_STORED_PASSWORD'||wwv_flow.LF||
'                         Return False;     END If;'||wwv_flow.LF||
''||wwv_flow.LF||
'                   IF L_'||
'PASSWORD                     = L_STORED_PASSWORD'||wwv_flow.LF||
'                   THEN'||wwv_flow.LF||
'                     insert into USERS_LOG (LOG_ID,IP_ADDRESS,LOGIN_USER,LOGIN_TIME)'||wwv_flow.LF||
'                RETURN TRUE;'||wwv_flow.LF||
'                END IF;'||wwv_flow.LF||
'                END;'||wwv_flow.LF||
''||wwv_flow.LF||
'FUNCTION CUSTOM_HASH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'    RETURN VARCHAR2'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'    L_PASSWORD   VARCHAR2 (4000);'||wwv_flow.LF||
'    L_SALT       VARCHAR2 (4000) := ''D9GE4CORS'||
'JZVKADPOJ5C1PERC704WB'';'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    L_PASSWORD :='||wwv_flow.LF||
'        UTL_RAW.CAST_TO_RAW ('||wwv_flow.LF||
'            DBMS_OBFUSCATION_TOOLKIT.MD5 (INPUT_STRING => P_PASSWORD)) RETURN       L_PASSWORD;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'                END;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130844','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38146587535454339100
 ,p_command => 
'CREATE OR REPLACE PACKAGE BODY "ACL"'||wwv_flow.LF||
'AS'||wwv_flow.LF||
'    FUNCTION CUSTOM_AUTH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'        RETURN BOOLEAN'||wwv_flow.LF||
'    IS'||wwv_flow.LF||
'        L_PASSWORD          VARCHAR2 (4000);'||wwv_flow.LF||
'        L_STORED_PASSWORD   VARCHAR2 (4000);'||wwv_flow.LF||
'    BEGIN'||wwv_flow.LF||
'        SELECT PIN'||wwv_flow.LF||
'          INTO L_STORED_PASSWORD'||wwv_flow.LF||
'          FROM MY_USERS'||wwv_flow.LF||
'         WHERE     is_active = ''1'''||wwv_flow.LF||
'               AND LOWER (USERNAME) = LOWER (P_USER'||
'NAME)'||wwv_flow.LF||
'               AND ROWNUM <= 1;'||wwv_flow.LF||
''||wwv_flow.LF||
'        L_PASSWORD := CUSTOM_HASH (P_USERNAME, P_PASSWORD);'||wwv_flow.LF||
''||wwv_flow.LF||
'        IF L_PASSWORD = L_STORED_PASSWORD'||wwv_flow.LF||
'        THEN'||wwv_flow.LF||
'            INSERT INTO USERS_LOG (LOG_ID,'||wwv_flow.LF||
'                                   IP_ADDRESS,'||wwv_flow.LF||
'                                   LOGIN_USER,'||wwv_flow.LF||
'                                   LOGIN_TIME)                                                              '||
' RETURN           TRUE        ;'||wwv_flow.LF||
'ELSE'||wwv_flow.LF||
'                INSERT INTO e_log (pid, msg)'||wwv_flow.LF||
'                         VALUES ('||wwv_flow.LF||
'                                    (SELECT NVL (MAX (pid), 0) + 1 FROM e_log),'||wwv_flow.LF||
'                                       ''not match - user: '''||wwv_flow.LF||
'                                    || P_USERNAME'||wwv_flow.LF||
'                                    || ''   pass: '''||wwv_flow.LF||
'                                    || P_PA'||
'SSWORD);'||wwv_flow.LF||
''||wwv_flow.LF||
'                RETURN FALSE;'||wwv_flow.LF||
'        END IF;'||wwv_flow.LF||
'    EXCEPTION'||wwv_flow.LF||
'        WHEN NO_DATA_FOUND'||wwv_flow.LF||
'        THEN'||wwv_flow.LF||
'            INSERT INTO e_log (pid, msg)'||wwv_flow.LF||
'                     VALUES ('||wwv_flow.LF||
'                                (SELECT NVL (MAX (pid), 0) + 1 FROM e_log),'||wwv_flow.LF||
'                                   ''No User Found - user: '''||wwv_flow.LF||
'                                || P_USERNAME'||wwv_flow.LF||
'                                || '' '||
'  pass: '''||wwv_flow.LF||
'                                || P_PASSWORD);'||wwv_flow.LF||
''||wwv_flow.LF||
'            RETURN FALSE;'||wwv_flow.LF||
'    END;'||wwv_flow.LF||
''||wwv_flow.LF||
'    FUNCTION CUSTOM_HASH (P_USERNAME VARCHAR2, P_PASSWORD VARCHAR2)'||wwv_flow.LF||
'        RETURN VARCHAR2'||wwv_flow.LF||
'    IS'||wwv_flow.LF||
'        L_PASSWORD   VARCHAR2 (4000);'||wwv_flow.LF||
'        L_SALT       VARCHAR2 (4000) := ''D9GE4CORSJZVKADPOJ5C1PERC704WB'';'||wwv_flow.LF||
'    BEGIN'||wwv_flow.LF||
'        L_PASSWORD :='||wwv_flow.LF||
'            UTL_RAW.CAST_TO_RAW ('||wwv_flow.LF||
'                DBMS_OBFUSCA'||
'TION_TOOLKIT.MD5 (INPUT_STRING => P_PASSWORD));'||wwv_flow.LF||
'        RETURN L_PASSWORD;'||wwv_flow.LF||
'    END;'||wwv_flow.LF||
'END;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130848','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38146828064050346728
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE TRIGGER  "AUTO_USER_GROUP_MY_STOCK" '||wwv_flow.LF||
'              after INSERT'||wwv_flow.LF||
'              ON MY_USERS   REFERENCING NEW AS NEW OLD AS OLD'||wwv_flow.LF||
'              FOR EACH ROW'||wwv_flow.LF||
'            DECLARe'||wwv_flow.LF||
'            begin'||wwv_flow.LF||
'             INSERT INTO USER_GROUP_MY_STOCK (PID, PID_USER, PID_GROUP, IS_ACTIVE, INSERT_BY, INSERT_DATE, UPDATE_BY, UPDATE_DATE)'||wwv_flow.LF||
'            EXCEPTION'||wwv_flow.LF||
'              WHEN OTHERS'||wwv_flow.LF||
''||
'              THEN'||wwv_flow.LF||
'                 RAISE;'||wwv_flow.LF||
'            END;'||wwv_flow.LF||
'            ALTER TRIGGER  "AUTO_USER_GROUP_MY_STOCK" ENABLE'||wwv_flow.LF||
'            CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_MY_USERS" '||wwv_flow.LF||
'              before insert on "MY_USERS"               '||wwv_flow.LF||
'              for each row  '||wwv_flow.LF||
'            begin   '||wwv_flow.LF||
'              if :NEW."USER_ID" is null then '||wwv_flow.LF||
'                select "MY_USERS_SEQ".nextval into :NEW."USE'||
'R_ID" from sys.dual; '||wwv_flow.LF||
'              end if; '||wwv_flow.LF||
'            end; '||wwv_flow.LF||
'            ALTER TRIGGER  "BI_MY_USERS" ENABLE'||wwv_flow.LF||
'            CREATE OR REPLACE EDITIONABLE TRIGGER  "LOGIN_ID_ACL_USER" '||wwv_flow.LF||
'            BEFORE INSERT OR UPDATE of USER_ID'||wwv_flow.LF||
'            ON MY_USERS '||wwv_flow.LF||
'            REFERENCING NEW AS New OLD AS Old'||wwv_flow.LF||
'            FOR EACH ROW'||wwv_flow.LF||
'            DECLARE'||wwv_flow.LF||
'            BEGIN'||wwv_flow.LF||
'            :NEW.USER_ID := lower(:N'||
'EW.USER_ID);'||wwv_flow.LF||
'               EXCEPTION'||wwv_flow.LF||
'                 WHEN OTHERS THEN'||wwv_flow.LF||
'                   -- Consider logging the error and then re-raise'||wwv_flow.LF||
'                   RAISE;'||wwv_flow.LF||
'            END ;'||wwv_flow.LF||
'            ALTER TRIGGER  "LOGIN_ID_ACL_USER" ENABLE'||wwv_flow.LF||
''||wwv_flow.LF||
'            CREATE OR REPLACE EDITIONABLE TRIGGER  "PIN_MY_USER" '||wwv_flow.LF||
'            BEFORE INSERT OR UPDATE of PIN '||wwv_flow.LF||
'            ON MY_USERS'||wwv_flow.LF||
'            DECLARE'||wwv_flow.LF||
'        '||
'    BEGIN'||wwv_flow.LF||
'            :new.PIN:=USER_AUTH_IP.CUSTOM_HASH ( :new.USER_ID, :new.PIN); '||wwv_flow.LF||
'            IF INSERTING'||wwv_flow.LF||
'              THEN'||wwv_flow.LF||
'                 :NEW.ADDED_DATE := SYSDATE;'||wwv_flow.LF||
'              END IF;'||wwv_flow.LF||
'               EXCEPTION'||wwv_flow.LF||
'                 WHEN OTHERS THEN'||wwv_flow.LF||
'                   RAISE;'||wwv_flow.LF||
'            END ;'||wwv_flow.LF||
'            ALTER TRIGGER  "PIN_MY_USER" ENABLE'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130849','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38149681886730375557
 ,p_command => 
'DROP TABLE Payments;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130854','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38149736065713384092
 ,p_command => 
'DROP TABLE Airlines;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130855','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38149736150328384421
 ,p_command => 
'DROP TABLE Users;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130855','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38149821759381676471
 ,p_command => 
'DROP TABLE Financial_Transactions;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130854','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38149822352282676915
 ,p_command => 
'DROP TABLE Flight_Status;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130854','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38149866616089683266
 ,p_command => 
'DROP TABLE Flight_Crew;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130855','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38149870253706683996
 ,p_command => 
'DROP TABLE Crew;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130855','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38149957713096699559
 ,p_command => 
'CREATE TABLE users3('||wwv_flow.LF||
'	user_id INT NOT NULL,'||wwv_flow.LF||
'  	user_name VARCHAR2(64) NOT NULL,'||wwv_flow.LF||
'  	user_pass VARCHAR2(32) NOT NULL,'||wwv_flow.LF||
'	user_roll VARCHAR2(30) NOT NULL,'||wwv_flow.LF||
'        user_activated number default 0,'||wwv_flow.LF||
'  	PRIMARY KEY(user_id)'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130858','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38150669801893727014
 ,p_command => 
'INSERT INTO Airlines VALUES (5, ''JetBlue Airways'', ''B6'');'||wwv_flow.LF||
'INSERT INTO Airlines VALUES (6, ''Alaska Airlines'', ''AS'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130902','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38150014417545399974
 ,p_command => 
'INSERT INTO users3 VALUES(1,''azmi'',''azmi007@@##'',''admin'',''1'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130858','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38150092682835410716
 ,p_command => 
'CREATE SEQUENCE airline_seq START WITH 1 INCREMENT BY 1;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130900','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38152349376740437149
 ,p_command => 
'INSERT INTO Airports VALUES (10, ''Toronto Pearson International Airport'', ''YYZ'', ''Toronto'', ''Canada'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130904','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38150674528912727875
 ,p_command => 
'INSERT INTO Airlines VALUES (6, ''Alaska Airlines'', ''AS'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130902','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38150676101878728186
 ,p_command => 
'INSERT INTO Airlines VALUES (7, ''Spirit Airlines'', ''NK'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130902','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38150677319390728523
 ,p_command => 
'INSERT INTO Airlines VALUES (8, ''Frontier Airlines'', ''F9'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130902','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38150758699554734410
 ,p_command => 
'CREATE TABLE Airports ('||wwv_flow.LF||
'    airport_id INT PRIMARY KEY,'||wwv_flow.LF||
'    airport_name VARCHAR(100) NOT NULL,'||wwv_flow.LF||
'    airport_code VARCHAR(10) NOT NULL,'||wwv_flow.LF||
'    city VARCHAR(50),'||wwv_flow.LF||
'    country VARCHAR(50)'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130903','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38151733887573425613
 ,p_command => 
'INSERT INTO Airlines VALUES (5, ''JetBlue Airways'', ''B6'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130902','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38152340682062433607
 ,p_command => 
'CREATE SEQUENCE airport_seq START WITH 1 INCREMENT BY 1;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130904','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38152345898407435348
 ,p_command => 
''||wwv_flow.LF||
'INSERT INTO Airports VALUES (5, ''Dubai International Airport'', ''DXB'', ''Dubai'', ''UAE'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130904','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38152684577678734944
 ,p_command => 
'CREATE OR REPLACE TRIGGER airport_id_trigger'||wwv_flow.LF||
'BEFORE INSERT ON Airports'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT airport_seq.NEXTVAL INTO :NEW.airport_id FROM dual;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130903','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38152720541099735895
 ,p_command => 
'INSERT INTO Airports VALUES (1, ''John F. Kennedy International Airport'', ''JFK'', ''New York'', ''USA'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130904','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38153037394263736846
 ,p_command => 
'INSERT INTO Airports VALUES (4, ''Tokyo Haneda Airport'', ''HND'', ''Tokyo'', ''Japan'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130904','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38153094754525741492
 ,p_command => 
'CREATE TABLE Flights ('||wwv_flow.LF||
'    flight_id INT PRIMARY KEY,'||wwv_flow.LF||
'    airline_id INT,'||wwv_flow.LF||
'    departure_airport_id INT,'||wwv_flow.LF||
'    arrival_airport_id INT,'||wwv_flow.LF||
'    flight_number VARCHAR(10),'||wwv_flow.LF||
'    departure_time TIMESTAMP,'||wwv_flow.LF||
'    arrival_time TIMESTAMP,'||wwv_flow.LF||
'    FOREIGN KEY (airline_id) REFERENCES Airlines(airline_id),'||wwv_flow.LF||
'    FOREIGN KEY (departure_airport_id) REFERENCES Airports(airport_id),'||wwv_flow.LF||
'    FOREIGN KEY (arrival_airport_id) REFERENC'||
'ES Airports(airport_id)'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130905','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38153129424720745666
 ,p_command => 
'INSERT INTO Flights VALUES (10, 10, 10, 1, ''G410'', TO_TIMESTAMP(''2024-09-01 17:00:00'', ''YYYY-MM-DD HH24:MI:SS''), TO_TIMESTAMP(''2024-09-01 21:00:00'', ''YYYY-MM-DD HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130905','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38154169045751467261
 ,p_command => 
'CREATE TABLE Flights ('||wwv_flow.LF||
'    flight_id INT PRIMARY KEY,'||wwv_flow.LF||
'    airline_id INT,'||wwv_flow.LF||
'    departure_airport_id INT,'||wwv_flow.LF||
'    arrival_airport_id INT,'||wwv_flow.LF||
'    flight_number VARCHAR(10),'||wwv_flow.LF||
'    departure_time DATETIME,'||wwv_flow.LF||
'    arrival_time DATETIME,'||wwv_flow.LF||
'    FOREIGN KEY (airline_id) REFERENCES Airlines(airline_id),'||wwv_flow.LF||
'    FOREIGN KEY (departure_airport_id) REFERENCES Airports(airport_id),'||wwv_flow.LF||
'    FOREIGN KEY (arrival_airport_id) REFERENCES'||
' Airports(airport_id)'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130909','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38154944289314480265
 ,p_command => 
'CREATE TABLE Passengers ('||wwv_flow.LF||
'    passenger_id INT PRIMARY KEY,'||wwv_flow.LF||
'    first_name VARCHAR(50),'||wwv_flow.LF||
'    last_name VARCHAR(50),'||wwv_flow.LF||
'    passport_number VARCHAR(20),'||wwv_flow.LF||
'    nationality VARCHAR(50)'||wwv_flow.LF||
')'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130911','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38154971552307482192
 ,p_command => 
'CREATE SEQUENCE passenger_seq START WITH 1 INCREMENT BY 1;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130912','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38154984197016483314
 ,p_command => 
'CREATE SEQUENCE passenger_seq START WITH 1 INCREMENT BY 1;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER passenger_id_trigger'||wwv_flow.LF||
'BEFORE INSERT ON Passengers'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT passenger_seq.NEXTVAL INTO :NEW.passenger_id FROM dual;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130912','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38155062726892783549
 ,p_command => 
''||wwv_flow.LF||
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)'||wwv_flow.LF||
'VALUES (1, ''John'', ''Doe'', ''P1234567'', ''USA'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130912','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38156505981713494013
 ,p_command => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)'||wwv_flow.LF||
'VALUES (8, ''Fiona'', ''Garcia'', ''P8901234'', ''Spain'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130914','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38156506835084494453
 ,p_command => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)'||wwv_flow.LF||
'VALUES (9, ''George'', ''Harris'', ''P9012345'', ''Germany'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130914','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38156539355768501459
 ,p_command => 
'CREATE TABLE Bookings ('||wwv_flow.LF||
'    booking_id INT PRIMARY KEY,'||wwv_flow.LF||
'    flight_id INT,'||wwv_flow.LF||
'    passenger_id INT,'||wwv_flow.LF||
'    booking_date TIMESTAMP,'||wwv_flow.LF||
'    seat_class VARCHAR(20),'||wwv_flow.LF||
'    price DECIMAL(10, 2),'||wwv_flow.LF||
'    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),'||wwv_flow.LF||
'    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130915','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38156579515027504171
 ,p_command => 
'INSERT INTO Bookings (booking_id, flight_id, passenger_id, booking_date, seat_class, price)'||wwv_flow.LF||
'VALUES (1, 1, 1, TO_TIMESTAMP(''2024-08-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''), ''Economy'', 500.00);'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130915','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38156582082413505030
 ,p_command => 
'INSERT INTO Bookings (booking_id, flight_id, passenger_id, booking_date, seat_class, price)'||wwv_flow.LF||
'VALUES (3, 3, 3, TO_TIMESTAMP(''2024-08-10 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''), ''First'', 2500.00);'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130915','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38156993223700804563
 ,p_command => 
'CREATE OR REPLACE TRIGGER booking_id_trigger'||wwv_flow.LF||
'BEFORE INSERT ON Bookings'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT booking_seq.NEXTVAL INTO :NEW.booking_id FROM dual;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130915','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38157001258574806415
 ,p_command => 
'INSERT INTO Bookings (booking_id, flight_id, passenger_id, booking_date, seat_class, price)'||wwv_flow.LF||
'VALUES (2, 2, 2, TO_TIMESTAMP(''2024-08-05 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''), ''Business'', 1500.00);'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130915','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38157007104872807476
 ,p_command => 
'INSERT INTO Bookings (booking_id, flight_id, passenger_id, booking_date, seat_class, price)'||wwv_flow.LF||
'VALUES (4, 4, 4, TO_TIMESTAMP(''2024-08-15 18:00:00'', ''YYYY-MM-DD HH24:MI:SS''), ''Economy'', 600.00);'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38157070761960809629
 ,p_command => 
'CREATE OR REPLACE TRIGGER crew_id_trigger'||wwv_flow.LF||
'BEFORE INSERT ON Crew'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    :NEW.crew_id := crew_seq.NEXTVAL;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38157237761044508913
 ,p_command => 
'CREATE OR REPLACE TRIGGER crew_id_trigger'||wwv_flow.LF||
'BEFORE INSERT ON Crew'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    :NEW.crew_id := crew_seq.NEXTVAL;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38157253047992511512
 ,p_command => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (4, ''Emily'', ''Davis'', ''Flight Attendant'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130917','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38158016012167811264
 ,p_command => 
'CREATE SEQUENCE crew_seq START WITH 1 INCREMENT BY 1;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38159070851207818259
 ,p_command => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (7, ''David'', ''Taylor'', ''Co-Pilot'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130917','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38161387648280838800
 ,p_command => 
'INSERT INTO Flight_Crew (flight_id, crew_id) VALUES (1, 1);'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130921','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162114407294539921
 ,p_command => 
'CREATE TABLE Payments ('||wwv_flow.LF||
'    payment_id INT PRIMARY KEY,'||wwv_flow.LF||
'    booking_id INT,'||wwv_flow.LF||
'    payment_date TIMESTAMP,'||wwv_flow.LF||
'    amount DECIMAL(10, 2),'||wwv_flow.LF||
'    payment_method VARCHAR(20),'||wwv_flow.LF||
'    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130921','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162162449993547968
 ,p_command => 
'INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method)'||wwv_flow.LF||
'VALUES (1, 1, TO_TIMESTAMP(''2024-08-02 10:00:00'', ''YYYY-MM-DD HH24:MI:SS''), 500.00, ''Credit Card'')'||wwv_flow.LF||
'WHERE EXISTS (SELECT 1 FROM Bookings WHERE booking_id = 1);'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162177900675550814
 ,p_command => 
'CREATE TABLE Flight_Status ('||wwv_flow.LF||
'    status_id INT PRIMARY KEY,'||wwv_flow.LF||
'    flight_id INT,'||wwv_flow.LF||
'    status VARCHAR(20),'||wwv_flow.LF||
'    updated_time TIMESTAMP,'||wwv_flow.LF||
'    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162203619353842232
 ,p_command => 
'INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method)'||wwv_flow.LF||
'VALUES (1, 1, TO_TIMESTAMP(''2024-08-02 10:00:00'', ''YYYY-MM-DD HH24:MI:SS''), 500.00, ''Credit Card'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130921','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162268210926853120
 ,p_command => 
'CREATE OR REPLACE TRIGGER flight_status_id_trigger'||wwv_flow.LF||
'BEFORE INSERT ON Flight_Status'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT flight_status_seq.NEXTVAL INTO :NEW.status_id FROM dual;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162685785024857100
 ,p_command => 
'CREATE OR REPLACE TRIGGER financial_transaction_id_trigger'||wwv_flow.LF||
'BEFORE INSERT ON Financial_Transactions'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT financial_transaction_seq.NEXTVAL INTO :NEW.transaction_id FROM dual;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130924','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162803298132554733
 ,p_command => 
'CREATE TABLE Financial_Transactions ('||wwv_flow.LF||
'    transaction_id INT PRIMARY KEY,'||wwv_flow.LF||
'    transaction_type VARCHAR(50),'||wwv_flow.LF||
'    amount DECIMAL(10, 2),'||wwv_flow.LF||
'    transaction_date TIMESTAMP'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130924','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162860353677564316
 ,p_command => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (4, ''Ticket Sale'', 600.00, TO_TIMESTAMP(''2024-08-15 18:00:00'', ''YYYY-MM-DD HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38163148997342858295
 ,p_command => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (1, ''Ticket Sale'', 500.00, TO_TIMESTAMP(''2024-08-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130924','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38163519428012865633
 ,p_command => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (3, ''Ticket Sale'', 2500.00, TO_TIMESTAMP(''2024-08-10 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38164019864666867982
 ,p_command => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (7, ''Ticket Sale'', 700.00, TO_TIMESTAMP(''2024-08-30 10:00:00'', ''YYYY-MM-DD HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130926','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38164152907920869372
 ,p_command => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (10, ''Ticket Sale'', 800.00, TO_TIMESTAMP(''2024-09-10 16:00:00'', ''YYYY-MM-DD HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130926','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38193832655588308442
 ,p_command => 
'CREATE OR REPLACE TRIGGER user_id_trigger'||wwv_flow.LF||
'BEFORE INSERT ON users3'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT user_id_seq.NEXTVAL INTO :NEW.user_id FROM dual;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409131039','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38365772912606423951
 ,p_command => 
'Alter table USERS3 rename to USERS'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409131722','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38367394547472442530
 ,p_command => 
'DROP TABLE users;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409131725','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38367400631374745922
 ,p_command => 
'DROP TABLE users3;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409131725','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38367429351348750931
 ,p_command => 
'CREATE TABLE users('||wwv_flow.LF||
'    user_id INT NOT NULL,'||wwv_flow.LF||
'    user_name VARCHAR2(64) NOT NULL,'||wwv_flow.LF||
'    user_pass VARCHAR2(32) NOT NULL,'||wwv_flow.LF||
'    user_roll VARCHAR2(30) NOT NULL,'||wwv_flow.LF||
'    user_activated number default 0,'||wwv_flow.LF||
'    PRIMARY KEY(user_id)'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409131726','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38367430069034751306
 ,p_command => 
'INSERT INTO users VALUES(1,''azmi'',''azmi007@@##'',''admin'',''1'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409131726','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38369251124330784826
 ,p_command => 
'CREATE SEQUENCE users_seq START WITH 1 INCREMENT BY 1;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409131732','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42308026021729938484
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    b.booking_id,'||wwv_flow.LF||
'    b.booking_date,'||wwv_flow.LF||
'    (SELECT p.first_name || '' '' || p.last_name FROM Passengers p WHERE p.passenger_id = b.passenger_id) AS passenger_name'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    Bookings b;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409201637','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42308559165664648930
 ,p_command => 
'create view passenger_name_&_Bookings'||wwv_flow.LF||
'SELECT '||wwv_flow.LF||
'    b.booking_id,'||wwv_flow.LF||
'    b.booking_date,'||wwv_flow.LF||
'    (SELECT p.first_name || '' '' || p.last_name FROM Passengers p WHERE p.passenger_id = b.passenger_id) AS passenger_name'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    Bookings b;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409201639','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42308914991521951154
 ,p_command => 
'create view passenger_name_&_Bookings as'||wwv_flow.LF||
'SELECT '||wwv_flow.LF||
'    b.booking_id,'||wwv_flow.LF||
'    b.booking_date,'||wwv_flow.LF||
'    (SELECT p.first_name || '' '' || p.last_name FROM Passengers p WHERE p.passenger_id = b.passenger_id) AS passenger_name'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    Bookings b;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409201639','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42309022790072653618
 ,p_command => 
'create view passenger_name_&_Bookings as ('||wwv_flow.LF||
'SELECT '||wwv_flow.LF||
'    b.booking_id,'||wwv_flow.LF||
'    b.booking_date,'||wwv_flow.LF||
'    (SELECT p.first_name || '' '' || p.last_name FROM Passengers p WHERE p.passenger_id = b.passenger_id) AS passenger_name'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    Bookings b);'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409201640','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42309478860428957328
 ,p_command => 
'create view passenger_name_&_Bookings as jhafvhjds ('||wwv_flow.LF||
'SELECT '||wwv_flow.LF||
'    b.booking_id,'||wwv_flow.LF||
'    b.booking_date,'||wwv_flow.LF||
'    (SELECT p.first_name || '' '' || p.last_name FROM Passengers p WHERE p.passenger_id = b.passenger_id) AS passenger_name'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    Bookings b);'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409201641','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42311341789500722108
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    a.airline_name'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    Airlines a'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'    EXISTS (SELECT 1 FROM Flights f WHERE f.airline_id = a.airline_id);'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409201652','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42312618372015019417
 ,p_command => 
'Create View Airline_With_Flights as ('||wwv_flow.LF||
'SELECT '||wwv_flow.LF||
'    a.airline_name'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    Airlines a'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'    EXISTS (SELECT 1 FROM Flights f WHERE f.airline_id = a.airline_id));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409201651','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42511075213955874615
 ,p_command => 
'SELECT airport_id, airport_name'||wwv_flow.LF||
'FROM Airports'||wwv_flow.LF||
'WHERE airport_id IN ('||wwv_flow.LF||
'    SELECT departure_airport_id'||wwv_flow.LF||
'    FROM Flights'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409210957','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42511706039274889749
 ,p_command => 
'Create View ALL_Airport_Flights_Departd as ('||wwv_flow.LF||
'SELECT airport_id, airport_name'||wwv_flow.LF||
'FROM Airports'||wwv_flow.LF||
'WHERE airport_id IN ('||wwv_flow.LF||
'    SELECT departure_airport_id'||wwv_flow.LF||
'    FROM Flights'||wwv_flow.LF||
'));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409211000','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42511974213954917234
 ,p_command => 
'Create View Flights_WithNo_Bookings as ('||wwv_flow.LF||
'SELECT flight_id, flight_number'||wwv_flow.LF||
'FROM Flights'||wwv_flow.LF||
'WHERE NOT EXISTS ('||wwv_flow.LF||
'    SELECT 1'||wwv_flow.LF||
'    FROM Bookings'||wwv_flow.LF||
'    WHERE flight_id = Flights.flight_id'||wwv_flow.LF||
'));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409211004','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42512019079506210759
 ,p_command => 
'SELECT flight_id, flight_number'||wwv_flow.LF||
'FROM Flights'||wwv_flow.LF||
'WHERE NOT EXISTS ('||wwv_flow.LF||
'    SELECT 1'||wwv_flow.LF||
'    FROM Bookings'||wwv_flow.LF||
'    WHERE flight_id = Flights.flight_id'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409211003','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42515824900000300319
 ,p_command => 
'Create View Crew_WithNO_Flght as ('||wwv_flow.LF||
'SELECT crew_id, first_name, last_name, role'||wwv_flow.LF||
'FROM Crew'||wwv_flow.LF||
'WHERE NOT EXISTS ('||wwv_flow.LF||
'    SELECT 1'||wwv_flow.LF||
'    FROM Flight_Crew fc'||wwv_flow.LF||
'    WHERE fc.crew_id = Crew.crew_id'||wwv_flow.LF||
'));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409211018','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 43063318902319737252
 ,p_command => 
'DROP SEQUENCE flight_crew_seq;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409221854','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 43063804477149748529
 ,p_command => 
'DROP TRIGGER flight_crew_bi_trigger;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409221856','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 43065317062297123910
 ,p_command => 
'CREATE OR REPLACE TRIGGER flight_crew_bi_trigger'||wwv_flow.LF||
'BEFORE INSERT ON Flight_Crew'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT first_name, role INTO :NEW.first_name, :NEW.role FROM Crew WHERE crew_id = :NEW.crew_id;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409221908','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 43067656560425181512
 ,p_command => 
'select a."FIRST_NAME", '||wwv_flow.LF||
'       a."CREW_ID", '||wwv_flow.LF||
'       count(*) c'||wwv_flow.LF||
'from   "CREW" a, "FLIGHT_CREW" b'||wwv_flow.LF||
'where  a."CREW_ID" = b."CREW_ID"'||wwv_flow.LF||
'group by a."FIRST_NAME", a."CREW_ID"'||wwv_flow.LF||
'order by 3 desc'||wwv_flow.LF||
''
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409221918','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42515462472336994696
 ,p_command => 
'SELECT crew_id, first_name, last_name, role'||wwv_flow.LF||
'FROM Crew'||wwv_flow.LF||
'WHERE NOT EXISTS ('||wwv_flow.LF||
'    SELECT 1'||wwv_flow.LF||
'    FROM Flight_Crew fc'||wwv_flow.LF||
'    WHERE fc.crew_id = Crew.crew_id'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409211017','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38153253933911452527
 ,p_command => 
'INSERT INTO Flights (flight_id, airline_id, departure_airport_id, arrival_airport_id, flight_number, departure_time, arrival_time) VALUES (1, 1, 1, 2, ''AA101'', ''2024-09-01 08:00:00'', ''2024-09-01 11:00:00'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130907','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38153442021734759262
 ,p_command => 
'INSERT INTO Flights VALUES (10, 10, 10, 1, ''G410'', TO_TIMESTAMP(''2024-09-01 17:00:00'', ''YYYY-MM-DD HH24:MI:SS''), TO_TIMESTAMP(''2024-09-01 21:00:00'', ''YYYY-MM-MM HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130908','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38154980944525482545
 ,p_command => 
'CREATE OR REPLACE TRIGGER passenger_id_trigger'||wwv_flow.LF||
'BEFORE INSERT ON Passengers'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT passenger_seq.NEXTVAL INTO :NEW.passenger_id FROM dual;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130912','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38155203614876485760
 ,p_command => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)'||wwv_flow.LF||
'VALUES (6, ''Diana'', ''Evans'', ''P6789012'', ''South Africa'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130912','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38154982738492482936
 ,p_command => 
'CREATE SEQUENCE passenger_seq START WITH 1 INCREMENT BY 1;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130912','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38154996701168484904
 ,p_command => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)'||wwv_flow.LF||
'VALUES (4, ''Bob'', ''Brown'', ''P4567890'', ''Australia'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130912','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38154997594089485327
 ,p_command => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)'||wwv_flow.LF||
'VALUES (5, ''Charlie'', ''Davis'', ''P5678901'', ''New Zealand'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130912','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38155010560397776659
 ,p_command => 
''||wwv_flow.LF||
'CREATE TABLE Flights ('||wwv_flow.LF||
'    flight_id INT PRIMARY KEY,'||wwv_flow.LF||
'    airline_id INT,'||wwv_flow.LF||
'    departure_airport_id INT,'||wwv_flow.LF||
'    arrival_airport_id INT,'||wwv_flow.LF||
'    flight_number VARCHAR(10),'||wwv_flow.LF||
'    departure_time TIMESTAMP,'||wwv_flow.LF||
'    arrival_time TIMESTAMP,'||wwv_flow.LF||
'    FOREIGN KEY (airline_id) REFERENCES Airlines(airline_id),'||wwv_flow.LF||
'    FOREIGN KEY (departure_airport_id) REFERENCES Airports(airport_id),'||wwv_flow.LF||
'    FOREIGN KEY (arrival_airport_id) REFEREN'||
'CES Airports(airport_id)'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130910','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38155080416685785879
 ,p_command => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)'||wwv_flow.LF||
'VALUES (2, ''Jane'', ''Smith'', ''P2345678'', ''UK'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130912','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38155121812122786337
 ,p_command => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)'||wwv_flow.LF||
'VALUES (3, ''Alice'', ''Johnson'', ''P3456789'', ''Canada'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130912','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38155146493712787957
 ,p_command => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)'||wwv_flow.LF||
'VALUES (7, ''Ethan'', ''Foster'', ''P7890123'', ''Ireland'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130912','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38156759173628796719
 ,p_command => 
'INSERT INTO Passengers (passenger_id, first_name, last_name, passport_number, nationality)'||wwv_flow.LF||
'VALUES (10, ''Hannah'', ''Ibrahim'', ''P0123456'', ''UAE'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130914','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38156992328238804138
 ,p_command => 
'CREATE SEQUENCE booking_seq START WITH 1 INCREMENT BY 1;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER booking_id_trigger'||wwv_flow.LF||
'BEFORE INSERT ON Bookings'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT booking_seq.NEXTVAL INTO :NEW.booking_id FROM dual;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130915','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38156998038067804915
 ,p_command => 
'CREATE SEQUENCE booking_seq START WITH 1 INCREMENT BY 1;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130915','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38157236641073508286
 ,p_command => 
'CREATE TABLE Crew ('||wwv_flow.LF||
'    crew_id INT PRIMARY KEY,'||wwv_flow.LF||
'    first_name VARCHAR(50),'||wwv_flow.LF||
'    last_name VARCHAR(50),'||wwv_flow.LF||
'    role VARCHAR(50)'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38157248076402510387
 ,p_command => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (1, ''Tom'', ''Johnson'', ''Pilot'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38158024166558812546
 ,p_command => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (2, ''Sarah'', ''Lee'', ''Flight Attendant'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38158027107089812961
 ,p_command => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (3, ''Michael'', ''Smith'', ''Co-Pilot'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38158437060810515753
 ,p_command => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (5, ''James'', ''Brown'', ''Pilot'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130917','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38158457502399517135
 ,p_command => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (9, ''Robert'', ''Thomas'', ''Pilot'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130917','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38158460588449517502
 ,p_command => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (10, ''Anna'', ''Moore'', ''Flight Attendant'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130918','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38159069931947817915
 ,p_command => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (6, ''Jessica'', ''Wilson'', ''Flight Attendant'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130917','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38159071246276818591
 ,p_command => 
'INSERT INTO Crew (crew_id, first_name, last_name, role) VALUES (8, ''Laura'', ''Anderson'', ''Flight Attendant'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130917','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38161383827216838385
 ,p_command => 
'CREATE TABLE Flight_Crew ('||wwv_flow.LF||
'    flight_id INT,'||wwv_flow.LF||
'    crew_id INT,'||wwv_flow.LF||
'    first_name VARCHAR(50),'||wwv_flow.LF||
'    role VARCHAR(50),'||wwv_flow.LF||
'    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id) ON DELETE CASCADE,'||wwv_flow.LF||
'    FOREIGN KEY (crew_id) REFERENCES Crew(crew_id) ON DELETE CASCADE,'||wwv_flow.LF||
'    PRIMARY KEY (flight_id, crew_id)'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130921','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162188275740551726
 ,p_command => 
'CREATE SEQUENCE flight_status_seq START WITH 1 INCREMENT BY 1;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162210166293843706
 ,p_command => 
'INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method)'||wwv_flow.LF||
'VALUES (2, 2, TO_TIMESTAMP(''2024-08-06 11:00:00'', ''YYYY-MM-DD HH24:MI:SS''), 1500.00, ''PayPal'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130922','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162247501438850625
 ,p_command => 
'CREATE OR REPLACE TRIGGER payment_id_trigger'||wwv_flow.LF||
'BEFORE INSERT ON Payments'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT payment_seq.NEXTVAL INTO :NEW.payment_id FROM dual;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162269458997854090
 ,p_command => 
'INSERT INTO Flight_Status (status_id, flight_id, status, updated_time) VALUES (1, 1, ''On Time'', TO_TIMESTAMP(''2024-09-01 07:00:00'', ''YYYY-MM-DD HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38164152530337868919
 ,p_command => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (9, ''Ticket Sale'', 2700.00, TO_TIMESTAMP(''2024-09-05 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130926','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162580418113854541
 ,p_command => 
'INSERT INTO Flight_Status (status_id, flight_id, status, updated_time) VALUES (2, 2, ''Delayed'', TO_TIMESTAMP(''2024-09-01 08:00:00'', ''YYYY-MM-DD HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162859335056563222
 ,p_command => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (2, ''Ticket Sale'', 1500.00, TO_TIMESTAMP(''2024-08-05 14:00:00'', ''YYYY-MM-DD HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162865808203565750
 ,p_command => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (6, ''Ticket Sale'', 2600.00, TO_TIMESTAMP(''2024-08-25 22:00:00'', ''YYYY-MM-DD HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130926','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38162868736919566717
 ,p_command => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (8, ''Ticket Sale'', 1700.00, TO_TIMESTAMP(''2024-09-01 12:00:00'', ''YYYY-MM-DD HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130926','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38163146589232857439
 ,p_command => 
'CREATE SEQUENCE financial_transaction_seq START WITH 1 INCREMENT BY 1;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130924','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38163865715503866820
 ,p_command => 
'INSERT INTO Financial_Transactions (transaction_id, transaction_type, amount, transaction_date) VALUES (5, ''Ticket Sale'', 1600.00, TO_TIMESTAMP(''2024-08-20 20:00:00'', ''YYYY-MM-DD HH24:MI:SS''));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38164159311947871012
 ,p_command => 
'COMMIT;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409130926','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38185669374437158403
 ,p_command => 
'FUNCTION Auth ('||wwv_flow.LF||
'p_username IN VARCHAR2,'||wwv_flow.LF||
'p_password IN VARCHAR2)'||wwv_flow.LF||
'RETURN BOOLEAN AS'||wwv_flow.LF||
'found number := 0;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT 1 into found FROM users3'||wwv_flow.LF||
'WHERE upper(USER_NAME) = upper(p_username)'||wwv_flow.LF||
'AND upper(USER_PASS) = upper(p_password)'||wwv_flow.LF||
'AND User_Activated = 1;'||wwv_flow.LF||
'RETURN TRUE;'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'RETURN FALSE;'||wwv_flow.LF||
'END;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409131014','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38193414741485005365
 ,p_command => 
'CREATE SEQUENCE user_id_seq START WITH 1 INCREMENT BY 1;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409131039','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38193417115507006058
 ,p_command => 
'CREATE TABLE users3('||wwv_flow.LF||
'    user_id INT NOT NULL,'||wwv_flow.LF||
'    user_name VARCHAR2(64) NOT NULL,'||wwv_flow.LF||
'    user_pass VARCHAR2(32) NOT NULL,'||wwv_flow.LF||
'    user_roll VARCHAR2(30) NOT NULL,'||wwv_flow.LF||
'    user_activated number default 0,'||wwv_flow.LF||
'    PRIMARY KEY(user_id)'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409131039','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38193425963868007707
 ,p_command => 
'INSERT INTO users3 VALUES(1,''azmi'',''azmi007@@##'',''admin'',''1'');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409131039','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38369765513130483807
 ,p_command => 
'CREATE OR REPLACE TRIGGER users_id_trigger'||wwv_flow.LF||
'BEFORE INSERT ON users'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT users_seq.NEXTVAL INTO :NEW.user_id FROM dual;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409131732','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42305970725990622673
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    f.flight_id,'||wwv_flow.LF||
'    f.flight_number,'||wwv_flow.LF||
'    (SELECT a.airline_name FROM Airlines a WHERE a.airline_id = f.airline_id) AS airline_name'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    Flights f;'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409201635','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42309057068516658918
 ,p_command => 
'create view passenger_name_and_bookings as ('||wwv_flow.LF||
'SELECT '||wwv_flow.LF||
'    b.booking_id,'||wwv_flow.LF||
'    b.booking_date,'||wwv_flow.LF||
'    (SELECT p.first_name || '' '' || p.last_name FROM Passengers p WHERE p.passenger_id = b.passenger_id) AS passenger_name'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    Bookings b);'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409201641','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42514267145002964739
 ,p_command => 
'SELECT p.passenger_id, p.first_name, p.last_name'||wwv_flow.LF||
'FROM Passengers p'||wwv_flow.LF||
'WHERE p.passenger_id IN ('||wwv_flow.LF||
'    SELECT b.passenger_id'||wwv_flow.LF||
'    FROM Bookings b'||wwv_flow.LF||
'    WHERE b.price > 1000'||wwv_flow.LF||
');'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409211012','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 42514330811020969715
 ,p_command => 
'Create View Passenger_WithPrice_1000 as ('||wwv_flow.LF||
'SELECT p.passenger_id, p.first_name, p.last_name'||wwv_flow.LF||
'FROM Passengers p'||wwv_flow.LF||
'WHERE p.passenger_id IN ('||wwv_flow.LF||
'    SELECT b.passenger_id'||wwv_flow.LF||
'    FROM Bookings b'||wwv_flow.LF||
'    WHERE b.price > 1000'||wwv_flow.LF||
'));'
    ,p_created_by => 'AZMI00121@GMAIL.COM'
    ,p_created_on => to_date('202409211013','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_AZMI');
end;
/
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409130639','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409130720','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409130818','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409131250','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409131250','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409131319','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409131407','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409131753','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409131754','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409131846','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409131948','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409131952','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409131958','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409140500','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409140850','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409160649','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409161514','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409201554','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409201554','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409210626','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409210956','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409211226','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409211854','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409220642','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409220659','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409220715','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409220733','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409220733','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409220848','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409221757','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409221811','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409221812','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409221814','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409231427','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409231633','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 44783,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130929','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130949','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131001','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131001','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131002','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131003','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131004','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131004','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131006','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131006','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131010','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131010','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131011','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131011','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131013','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131014','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131015','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131016','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131016','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131017','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131021','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131021','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131022','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131022','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131023','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131033','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131033','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131034','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131040','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'TANZILA',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131040','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131042','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'TANZILA',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131047','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131049','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI2',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131059','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131059','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131100','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'TANZILA',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131234','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131234','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'TANZILA',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131244','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131320','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131410','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131410','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131425','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131425','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131627','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131748','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131754','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131754','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131847','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131847','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI02',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131906','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131906','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131908','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131908','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131917','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131917','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131920','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131947','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131953','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131953','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409131957','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409140427','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409140503','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409140503','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409140513','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409140536','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409140537','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409140640','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409140848','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409140850','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409141156','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409141756','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'TANZILA',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409141759','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409141759','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'TANZILA',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409141806','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409150923','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409160649','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI02',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409160650','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'TANZILA',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409161458','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409161518','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409161545','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'TANZILA',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409161555','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409161558','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'NURRAFI2001@GMAIL.COM',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201503','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI02',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201504','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'TANZILA',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201515','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'TANZILA',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201515','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI02',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201529','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201552','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI02',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201558','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI02',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201604','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201604','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI02',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201606','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI02',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201606','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201607','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI02',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201607','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201629','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201658','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201658','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409201818','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409210629','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI02',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409210638','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI02',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409211008','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409211227','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'TANZILA',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409211431','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'TANZILA',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409211619','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409211639','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409211854','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409211854','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409211854','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI02',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409220132','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI02',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409220133','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409220450','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI02',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409220554','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'TANZILA',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409220619','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'TANZILA',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409220621','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409220658','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409220701','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409220718','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409220737','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409220742','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI02',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409220743','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409220855','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409220932','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409220933','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409221642','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409221648','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409221652','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409221850','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409221857','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409221858','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409221859','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409221905','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409221907','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409221913','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409221922','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409230352','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MRJ',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409231412','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409231613','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409231634','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'my_auth',
    p_app => 61693,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409231635','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'FUNCTION my_auth ( p_username IN VARCHAR2, p_password IN VARCHAR2) RETURN BOOLEAN AS found number := 0; BEGIN SELECT 1 into found FROM Users WHERE upper(username) = upper(p_username) AND upper(password) = upper(p_password) AND user_actOracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130657','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'FUNCTION my_auth ( p_username IN VARCHAR2, p_password IN VARCHAR2) RETURN BOOLEAN AS found number := 0; BEGIN SELECT 1 into found FROM Users WHERE upper(username) = upper(p_username) AND upper(password) = upper(p_password) AND user_actOracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130657','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130700','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130700','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130705','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130706','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130706','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130709','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130709','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130711','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130711','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130712','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130713','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130713','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130714','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 90622,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130714','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 226961,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409130827','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409071710','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409111548','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409111738','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409120453','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409120743','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409120930','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.125',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409121702','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409121845','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409121846','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409121847','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409121848','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409121850','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409121851','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202409121854','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 193344,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409111608','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'SYSTEM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 193344,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409111617','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 193344,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409111617','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 193344,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409111619','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 193344,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409111619','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 193344,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409111628','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 193344,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409111739','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 193344,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409111751','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 193344,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409111751','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 193344,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409111754','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 193344,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409111756','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 193344,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409120454','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 193344,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409120744','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 193344,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121705','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 225134,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409120841','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.125',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 225134,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409120936','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 225134,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121711','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 225134,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121725','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 225134,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121729','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 225885,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121750','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 225885,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121815','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 225885,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121816','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 225885,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121816','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Database Accounts',
    p_app => 226021,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121842','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Database Accounts',
    p_app => 226021,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121842','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'my_auth',
    p_app => 226021,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121845','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'my_auth',
    p_app => 226021,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121845','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Database Accounts',
    p_app => 226021,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121847','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Database Accounts',
    p_app => 226021,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121849','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Database Accounts',
    p_app => 226021,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121849','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Database Accounts',
    p_app => 226021,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121849','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Database Accounts',
    p_app => 226021,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121850','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Database Accounts',
    p_app => 226021,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121850','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 226211,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121949','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 226211,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121951','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 226211,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121951','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'AZMI00121@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 226211,
    p_owner => 'WKSP_AZMI',
    p_access_date => to_date('202409121951','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
wwv_flow_team_api.create_feedback (
  p_id => 39353626062464049682 + wwv_flow_team_api.g_id_offset
 ,p_feedback_id => 1
 ,p_feedback_type => 1
 ,p_feedback_status => 0
 ,p_application_id => 61693
 ,p_application_name => 'Airline Management System'
 ,p_page_id => 10000
 ,p_page_name => 'Administration'
 ,p_page_last_updated_by => 'AZMI00121@GMAIL.COM'
 ,p_page_last_updated_on => to_date('20240913094826','YYYYMMDDHH24MISS')
 ,p_session_id => '101422368055144'
 ,p_apex_user => 'AZMI'
 ,p_user_email => 'unknown'
 ,p_application_version => 'Release 1.0'
 ,p_session_info => 'security_group_id=35383432320216087641'||chr(10)||
'expires_on=9/17/2024'||chr(10)||
'ip_address=23.211.108.62'||chr(10)||
'session_id='||chr(10)||
'created_on=9/16/2024'
 ,p_session_state => 'P10010_DESKTOP_THEME_STYLE_ID="pmpenQY0Bvs3-dnVrfcARcooo76i-_-Avv-hsb-9XRU"'||chr(10)||
'P10010_END_USER_STYLE="-bsEtCNpQXVYH38mKCOqIw"'||chr(10)||
'P10020_TIMEFRAME="toWvHyvcaqwvWYUOtAhCtA"'||chr(10)||
'P10024_TIMEFRAME="B1Xu2UlM7HI9F9jVxGqJ0g"'||chr(10)||
'P10021_VIEW_AS="LWgWGjR_gjFkn101GyVmCA"'||chr(10)||
'P10021_TIMEFRAME="s20MKrg2hI9F6hImXDcuGg"'||chr(10)||
'P10030_PAGE_ID="D-snPRtkZ50ISOtc1YmEiw"'||chr(10)||
''
 ,p_parsing_schema => 'WKSP_AZMI'
 ,p_http_user_agent => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36'
 ,p_remote_addr => '2405:6540:1:2c9d:7b:a94d:7071:d570, 23.65.124.77, 23.61.205.4, 23.211.108.62'
 ,p_remote_user => 'APEX_PUBLIC_USER'
 ,p_http_host => 'apex.oracle.com'
 ,p_server_name => 'apex.oracle.com'
 ,p_server_port => '443'
 ,p_logging_security_group_id => 35383432320216087641
 ,p_logged_by_workspace_name => 'AZMI'
 ,p_created_by => 'AZMI'
 ,p_created_on => to_timestamp_tz('20240916154304.920347000 +00:00 ','YYYYMMDDHH24MISSxFF TZR TZD')
 ,p_updated_by => 'AZMI'
 ,p_updated_on => to_timestamp_tz('20240916154304.920349000 +00:00 ','YYYYMMDDHH24MISSxFF TZR TZD')
);
end;
/
--
prompt ...Issue Templates
--
begin
wwv_flow_team_api.create_issue_template (
  p_id => 37646241492272714157 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Modello bug'
 ,p_template_description => 'Modello utilizzato per registrare un bug.'
 ,p_template_text => 
'**Funzionamento previsto**'||chr(10)||
'- Indicare cosa si ritiene si sia verificato.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Funzionamento corrente**'||chr(10)||
'- Indicare cosa realmente succede.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Persone o elementi interessati**'||chr(10)||
'- Comunicare le persone o gli elementi interessati. '||chr(10)||
''||chr(10)||
'**Possibile soluzione**'||chr(10)||
'- Nei limiti del possibile, suggerire come si correggerebbe il bug.'||chr(10)||
''||chr(10)||
'**Passi da riprodurre**'||chr(10)||
'- Fornire in modo chiaro il set di passi da riprodurre,'||
' includendo screenshot e snippet di codice ove opportuno.'||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
''||chr(10)||
'**Contesto**'||chr(10)||
'- Descrivere le caratteristiche dell''operazione in corso quando si è verificato il bug. Specificare se il bug si verifica solo in determinate condizioni, a certe ore del giorno e così via.'||chr(10)||
''||chr(10)||
'**Ambiente**'||chr(10)||
''||chr(10)||
'- Versione: '||chr(10)||
'- Piattaforma: '||chr(10)||
'- Sottosistema:'||chr(10)||
''||chr(10)||
'______'||chr(10)||
''||chr(10)||
'_**NOTA:** per associare un problema a un''applicazione e/o a '||
'una pagina, registrare in primo luogo il problema, quindi utilizzare l''elenco a discesa **AZIONI** per associare l''applicazione e la pagina._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 37646241520695714157 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Modello richiesta funzione'
 ,p_template_description => 'Modello utilizzato per registrare una richiesta di funzione.'
 ,p_template_text => 
'**Riepilogo funzione**'||chr(10)||
' - Fornire una panoramica generale di un solo paragrafo della richiesta di funzione.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Contesto**'||chr(10)||
' - Indicare se la richiesta riguarda una situazione o un processo specifici. Ad esempio, "L''esito è sempre negativo quando [...]"'||chr(10)||
''||chr(10)||
''||chr(10)||
' - Fornire tutte le informazioni di supporto possibili, allegando screenshot, casi d''uso e così via.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Soluzione preferita**'||chr(10)||
'- Fornire una desc'||
'rizione chiara di cosa si desidera venga implementato.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Soluzioni alternative**'||chr(10)||
'- Fornire la descrizione delle soluzioni o delle funzioni alternative prese in considerazione o utilizzate.'||chr(10)||
''||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTA:** per associare un problema a un''applicazione e/o a una pagina, registrare in primo luogo il problema, quindi utilizzare l''elenco a discesa **AZIONI** per associare l''applicazione e la pagina'||
'._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 37646241648276714157 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Come...'
 ,p_template_description => 'Modello utilizzato per porre una domanda di procedura.'
 ,p_template_text => 
'**Domanda**'||chr(10)||
'- Porre la domanda o la richiesta in modo più conciso possibile.'||chr(10)||
''||chr(10)||
'**Contesto generale**'||chr(10)||
'- Specificare cosa si sta tentando di fare. '||chr(10)||
''||chr(10)||
''||chr(10)||
'- Indicare inoltre le ricerche effettuate o le persone contattate per trovare una risposta. '||chr(10)||
''||chr(10)||
''||chr(10)||
'**Ambiente** '||chr(10)||
'Specificare se la domanda riguarda in modo specifico un ambiente, un linguaggio di programmazione o un altro settore.'||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTE:** per ass'||
'ociare un problema a un''applicazione e/o a una pagina, registrare in primo luogo il problema, quindi utilizzare l''elenco a discesa **AZIONI** per associare l''applicazione e la pagina._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 37646241736553714157 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Rilevato bug'
 ,p_template_description => 'È stato rilevato un bug.'
 ,p_template_text => 
'È stato registrato un **bug** nel sistema esterno appropriato.'||chr(10)||
''||chr(10)||
'- Sistema di registrazione bug: '||chr(10)||
'- ID bug: '||chr(10)||
'- URL del bug: '||chr(10)||
''||chr(10)||
'Commenti:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 37646241895895714157 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Nessuna azione'
 ,p_template_description => 'Non verrà eseguita alcuna azione per il problema.'
 ,p_template_text => 
'Dopo un attento esame della situazione, **non verrà eseguita alcuna azione per questo problema**. '||chr(10)||
''||chr(10)||
'Commenti:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 37646241959376714157 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Richiesta di funzione presentata'
 ,p_template_description => 'È stata presentata una richiesta di funzione.'
 ,p_template_text => 
'Una **richiesta di funzione** è stata presentata nel sistema esterno appropriato.'||chr(10)||
''||chr(10)||
'- Sistema di registrazione funzioni: '||chr(10)||
'- ID funzione: '||chr(10)||
'- URL della definizione della funzione: '||chr(10)||
''||chr(10)||
'Commenti:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 37646242049202714157 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Problema noto'
 ,p_template_description => 'Riferimento a un problema noto.'
 ,p_template_text => 
'L''analisi ha evidenziato che si tratta un problema noto. Vedere i dettagli riportati di seguito.'||chr(10)||
''||chr(10)||
'- Sistema di registrazione bug: '||chr(10)||
'- ID bug: '||chr(10)||
'- URL del bug: '||chr(10)||
''||chr(10)||
'Commenti: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 37646242115409714158 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Sono necessarie ulteriori informazioni'
 ,p_template_description => 'Richiesta di ulteriori informazioni.'
 ,p_template_text => 
'**Sono necessarie più informazioni per questo problema:**'||chr(10)||
''||chr(10)||
'Fornire le informazioni richieste in basso. Senza queste informazioni risulta difficile classificare e tentare di risolvere il problema.'||chr(10)||
''||chr(10)||
''||chr(10)||
'Commenti:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 37646242285986714158 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Azione di follow-up richiesta'
 ,p_template_description => 'È richiesta un''azione di follow-up.'
 ,p_template_text => 
'Eseguire le azioni seguenti: '||chr(10)||
''||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
'4.'||chr(10)||
''||chr(10)||
'Commenti: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
end;
/
--
prompt ...Issue Email Prefs
--
begin
wwv_flow_team_api.create_issue_email_prefs (
  p_id => 37646242770022714158 + wwv_flow_team_api.g_id_offset
 ,p_user_id => 'AZMI00121@GMAIL.COM'
 ,p_receive_emails_yn => 'Y'
 ,p_notification_types => 'ISSUE_EDIT:COMMENT_ADD:COMMENT_EDIT:STATUS:ASSIGNEE:SUBSCRIBER:MILESTONE:LABEL:DUPLICATE:ASSOCIATION:ATTACHMENT'
 ,p_frequency => 'IMMEDIATELY'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
end;
/
--
prompt ...Label Groups
--
begin
wwv_flow_team_api.create_label_group (
  p_id => 37646238084440714155 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Area funzionale'
 ,p_group_color => 'label-color-19'
 ,p_group_description => 'Area funzionale interessata dal problema.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label_group (
  p_id => 37646238917163714156 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Categoria'
 ,p_group_color => 'label-color-11'
 ,p_group_description => 'Categoria assegnata al problema.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label_group (
  p_id => 37646239836193714156 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Importanza'
 ,p_group_color => 'label-color-16'
 ,p_group_description => 'Livello di importanza assegnato al problema.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label_group (
  p_id => 37646240408346714156 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Livello d''impegno'
 ,p_group_color => 'label-color-13'
 ,p_group_description => 'Livello d''impegno richiesto per risolvere il problema.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label_group (
  p_id => 37646240874432714157 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Stato di avanzamento'
 ,p_group_color => 'label-color-14'
 ,p_group_description => 'Stato di avanzamento per la risoluzione del problema.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
end;
/
--
prompt ...Labels
--
begin
wwv_flow_team_api.create_label (
  p_id => 37646238142347714155 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238084440714155
 ,p_label_name => 'UI / UX'
 ,p_label_desc => 'UI / UX'
 ,p_label_slug => 'ui-ux'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646238216611714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238084440714155
 ,p_label_name => 'Database'
 ,p_label_desc => 'Database'
 ,p_label_slug => 'database'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646238378795714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238084440714155
 ,p_label_name => 'Integrazione REST'
 ,p_label_desc => 'Integrazione REST'
 ,p_label_slug => 'integrazione-rest'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646238414131714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238084440714155
 ,p_label_name => 'CSS / HTML'
 ,p_label_desc => 'CSS / HTML'
 ,p_label_slug => 'css-html'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646238585590714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238084440714155
 ,p_label_name => 'Azioni dinamiche/JavaScript'
 ,p_label_desc => 'Azioni dinamiche/JavaScript'
 ,p_label_slug => 'azioni-dinamiche-javascript'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646238629434714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238084440714155
 ,p_label_name => 'Sicurezza'
 ,p_label_desc => 'Sicurezza'
 ,p_label_slug => 'sicurezza'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646238788746714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238084440714155
 ,p_label_name => 'Amministrazione'
 ,p_label_desc => 'Amministrazione'
 ,p_label_slug => 'amministrazione'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646238888265714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238084440714155
 ,p_label_name => 'Integrazione sistema esterno'
 ,p_label_desc => 'Integrazione sistema esterno'
 ,p_label_slug => 'integrazione-sistema-esterno'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646239071544714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238917163714156
 ,p_label_name => 'Bug'
 ,p_label_desc => 'Bug'
 ,p_label_slug => 'bug'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646239105540714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238917163714156
 ,p_label_name => 'Richiesta di miglioramento'
 ,p_label_desc => 'Richiesta di miglioramento'
 ,p_label_slug => 'richiesta-di-miglioramento'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646239267798714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238917163714156
 ,p_label_name => 'Richiesta di funzione'
 ,p_label_desc => 'Richiesta di funzione'
 ,p_label_slug => 'richiesta-di-funzione'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646239324013714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238917163714156
 ,p_label_name => 'Problema di sicurezza'
 ,p_label_desc => 'Problema di sicurezza'
 ,p_label_slug => 'problema-di-sicurezza'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646239434428714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238917163714156
 ,p_label_name => 'Problema di prestazioni'
 ,p_label_desc => 'Problema di prestazioni'
 ,p_label_slug => 'problema-di-prestazioni'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646239515020714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238917163714156
 ,p_label_name => 'Problemi di installazione'
 ,p_label_desc => 'Problemi di installazione'
 ,p_label_slug => 'problemi-di-installazione'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646239631346714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238917163714156
 ,p_label_name => 'Problema di documentazione'
 ,p_label_desc => 'Problema di documentazione'
 ,p_label_slug => 'problema-di-documentazione'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646239751177714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646238917163714156
 ,p_label_name => 'Problema di formazione'
 ,p_label_desc => 'Problema di formazione'
 ,p_label_slug => 'problema-di-formazione'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646239946935714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646239836193714156
 ,p_label_name => 'Critico'
 ,p_label_desc => 'Critico'
 ,p_label_slug => 'critico'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646240088723714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646239836193714156
 ,p_label_name => 'Importante'
 ,p_label_desc => 'Importante'
 ,p_label_slug => 'importante'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646240105308714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646239836193714156
 ,p_label_name => 'Normale'
 ,p_label_desc => 'Normale'
 ,p_label_slug => 'normale'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646240265157714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646239836193714156
 ,p_label_name => 'Backlog'
 ,p_label_desc => 'Backlog'
 ,p_label_slug => 'backlog'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646240345603714156 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646239836193714156
 ,p_label_name => 'Non verrà risolto'
 ,p_label_desc => 'Non verrà risolto'
 ,p_label_slug => 'non-verrà-risolto'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646240563365714157 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646240408346714156
 ,p_label_name => 'Correzione facile'
 ,p_label_desc => 'Correzione facile'
 ,p_label_slug => 'correzione-facile'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646240636068714157 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646240408346714156
 ,p_label_name => 'Impegno moderato'
 ,p_label_desc => 'Impegno moderato'
 ,p_label_slug => 'impegno-moderato'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646240752363714157 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646240408346714156
 ,p_label_name => 'Grande impegno di sviluppo'
 ,p_label_desc => 'Grande impegno di sviluppo'
 ,p_label_slug => 'grande-impegno-di-sviluppo'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646240949801714157 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646240874432714157
 ,p_label_name => 'In fase di elaborazione'
 ,p_label_desc => 'In fase di elaborazione'
 ,p_label_slug => 'in-fase-di-elaborazione'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646241038792714157 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646240874432714157
 ,p_label_name => 'Richiede ulteriori informazioni'
 ,p_label_desc => 'Richiede ulteriori informazioni'
 ,p_label_slug => 'richiede-ulteriori-informazioni'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646241180251714157 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646240874432714157
 ,p_label_name => 'In attesa di terze parti'
 ,p_label_desc => 'In attesa di terze parti'
 ,p_label_slug => 'in-attesa-di-terze-parti'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646241236578714157 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646240874432714157
 ,p_label_name => 'Correzione impossibile'
 ,p_label_desc => 'Correzione impossibile'
 ,p_label_slug => 'correzione-impossibile'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 37646241392191714157 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 37646240874432714157
 ,p_label_name => 'Completato'
 ,p_label_desc => 'Completato'
 ,p_label_slug => 'completato'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
end;
/
--
prompt ... Milestones
--
begin
wwv_flow_team_api.create_milestone (
  p_id => 37646242316733714158 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Blocco codice'
 ,p_milestone_date => to_date('20240927080029','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'blocco-codice'
 ,p_milestone_id => 1
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_milestone (
  p_id => 37646242403140714158 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Blocco interfaccia utente'
 ,p_milestone_date => to_date('20241012080029','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'blocco-interfaccia-utente'
 ,p_milestone_id => 2
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
wwv_flow_team_api.create_milestone (
  p_id => 37646242505702714158 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Release finale'
 ,p_milestone_date => to_date('20241027080029','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'release-finale'
 ,p_milestone_id => 3
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
end;
/
--
prompt ... Issues
--
begin
wwv_flow_team_api.create_issue (
  p_id => 37646242611411714158 + wwv_flow_team_api.g_id_offset
 ,p_title => 'Welcome to Team Development in Oracle APEX!'
 ,p_slug => 'welcome-to-team-development-in-oracle-apex'
 ,p_issue_text => 
'Hi there! '||chr(10)||
''||chr(10)||
'This is your very first issue! You can create issues to keep track of tasks, features, bugs, and feedback for all of your APEX projects!  You can add labels to issues, add assignees, set milestones, and even apply formatting using Markdown shorthand!  '||chr(10)||
''||chr(10)||
'Below is a quick sample of what you can do with Markdown:'||chr(10)||
'# Orionis bellica Stygias partes'||chr(10)||
' '||chr(10)||
'## Solibus an rutilis cornu'||chr(10)||
' '||chr(10)||
'Lorem markd'||
'ownum formosae. [Est medio](http://www.modomarte.com/cantu) et illi adunca? Miserum Phaethon, Editus, abrupta colonos; Aeeta annum; facere pruniceum '||chr(10)||
'**domat**, discussisque saevo, Tereo. _Quid noctis adhuc, nisi nemo dignos, aures sonus mentae conspecta?_ '||chr(10)||
' '||chr(10)||
'```js '||chr(10)||
'device_intranet_cloud(page_disk); '||chr(10)||
'if (81 >= scanner + realityHoneypot + intellectual_heuristic) { '||chr(10)||
'    ataDataWeb -= fileWormCamera '||
'+ hypertext; '||chr(10)||
'    hdtv(-3 - 2); '||chr(10)||
'    folder(controlHtml, model - 5); '||chr(10)||
'} '||chr(10)||
'``` '||chr(10)||
' '||chr(10)||
'## Consortia dum mea aethere Deionidenque vixque est '||chr(10)||
' '||chr(10)||
'Forma duris igne duritiem Minervaetransformabantur, moriemur manibusque nulla eripienda est rima grave tu. Illis succedat fit. Ter amo quod plurima, non ab alimentaque adest videbitur at. Avidissima agam qui superba a partem [crines precantia limen](http://totover'||
'tice.com/vertice) in **ignibus spernit ritusque** iamdudum. '||chr(10)||
' '||chr(10)||
'> Arcum aristis arsit generosior in cum laevum suae, ferebat, hoc. Manus faciat, '||chr(10)||
'> nec inpetus sua silvas ossa? Incursant Nereide diversaeque velut signumque '||chr(10)||
'> Hectora, convellere caede hostesque oppida, diu viriles. Isdem **sacra**, '||chr(10)||
'> facta, in viximus alimentaque quae patria, ut derigere vires. '||chr(10)||
' '||chr(10)||
' '||chr(10)||
'### Inde erat dicente viribus '||chr(10)||
''||
' '||chr(10)||
'Nomina aevumque pepercit ridet, vellet stetit tibi, Alcyone a Lelex adductis flumine stetit. *Fides* caeli gloria aquis neget meritis subitis tumulumque carmina illius non satis arces. Repressit volantes egesta, `et ira poscit` lacertis ita timidi. '||chr(10)||
' '||chr(10)||
'### Causam nec plagamque Minyis '||chr(10)||
' '||chr(10)||
'Venit caput vel sublimis haud causa et audire, terraeque sed, per duce gaudete Niobe fierent quantusque villis.'||
' Non **vallibus quinque vaga** densum si meruisse ponit olim terras saepe? Saxum sidera regia; feram hastarum os vigor sponte hinnitus inter est. '||chr(10)||
' '||chr(10)||
'- Vere furta ut exegi '||chr(10)||
'- Tempora poenaeque temptanti '||chr(10)||
'- Misisset est nec vicit edita hic '||chr(10)||
' '||chr(10)||
'Si ista Abantiades pennis, nusquam tu ira ego per. Ille sit, cum aditum culmine, primaque quae mira! Vix herbae volanti caeli, [quisquis](http://bello.org/ripa'||
'e-maenalon), et capillis coepisse iacta, tibi anum, tum iam persequar. Videtur quotiensque vires. Firmo ocius coepta ipsum ignoro, Matri nec regni quod, stimulosque quam librata. '||chr(10)||
' '||chr(10)||
'1. Ille citaeque illo ille Crotonis terra '||chr(10)||
'2. Formatae lancea hac de iuvabat bicolor et '||chr(10)||
'3. Vastator consistere pondere te carmen consorti ex '||chr(10)||
' '||chr(10)||
' '||chr(10)||
'| In ante metus dictum at tempor   | Luctus accumsan | Bibendum | Conse'||
'quat | '||chr(10)||
'|----------------------------------|----------------:|:--------:|-----------:| '||chr(10)||
'| Lectus arcu bibendum at varius   |            37.5 |   quam   |       .07 | '||chr(10)||
'| justo eget magna fermentum       |           127.2 |   lacus  |       .88 | '||chr(10)||
'| Platea dictumst quisque sagittis |            33.0 |   quam   |       .39 | '
 ,p_row_version => 1
 ,p_status => 'OPEN'
 ,p_issue_number => 1
 ,p_deleted => 'N'
 ,p_created_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_created_by => 'AZMI00121@GMAIL.COM'
 ,p_updated_on => to_date('20240912080029','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AZMI00121@GMAIL.COM'
);
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ... Extension Links
 
 
prompt ... Extension Grants
 
 
prompt ...workspace objects
 
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(37299420257128681501)
,p_name=>'App 193344 Push Notifications Credentials'
,p_static_id=>'App_193344_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'WKSP_AZMI';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA WKSP_AZMI - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_240100
-- Exported 16:47 Monday September 23, 2024 by: AZMI00121@GMAIL.COM
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 16:47 Monday September 23, 2024 by: AZMI00121@GMAIL.COM
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'AZMI';
 
end;
/

begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
