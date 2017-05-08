-------------------------------------------------------------------------------------------------------------------------------------
--  Tiere
-------------------------------------------------------------------------------------------------------------------------------------

insert into KUKAZUE_TIER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ZUECHTERNUMMER, NAME, GESCHLECHT, GEBURTSTDATUM, VATER_ID, MUTTER_ID)
values ('f19554b2-09b2-8da9-7c7b-efc48795eae0', 3, '2017-05-06 09:57:04', 'admin', '2017-05-08 11:37:33', 'admin', null, null, 'BUR-009', 'Peppa Wutz', 'WEIBLICH', '2016-07-23', null, null);

insert into KUKAZUE_TIER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ZUECHTERNUMMER, NAME, GESCHLECHT, GEBURTSTDATUM, VATER_ID, MUTTER_ID)
values ('08e44022-f773-f1bb-16e9-880a81049e86', 3, '2017-05-06 09:45:00', 'admin', '2017-05-08 11:37:11', 'admin', null, null, 'EWID-007', 'Jaxson Makson von der Weide', 'MAENNLICH', '2014-05-17', null, null);

insert into KUKAZUE_TIER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ZUECHTERNUMMER, NAME, GESCHLECHT, GEBURTSTDATUM, VATER_ID, MUTTER_ID)
values ('076d249c-a2bd-3c7a-018e-492bc5661643', 6, '2017-05-06 09:57:17', 'admin', '2017-05-08 11:37:53', 'admin', null, null, 'WGN-123', 'Pelle', 'MAENNLICH', '2017-02-02', null, null);

insert into KUKAZUE_TIER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ZUECHTERNUMMER, NAME, GESCHLECHT, GEBURTSTDATUM, VATER_ID, MUTTER_ID)
values ('69f10df6-7373-b64a-80bf-85dab4727d9f', 1, '2017-05-08 11:39:50', 'admin', '2017-05-08 11:39:50', null, null, null, 'WGN-5442', 'Casimir van der Strauch', 'MAENNLICH', '2011-03-20', null, null);




-------------------------------------------------------------------------------------------------------------------------------------
--  Berechtigungsgruppe Weißgrannen Züchter
-------------------------------------------------------------------------------------------------------------------------------------

insert into SEC_GROUP
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID)
values ('d4a18c56-fe6a-b533-beb9-d3ff2b101749', 2, '2017-05-06 09:59:24', 'admin', '2017-05-08 11:41:38', 'admin', null, null, 'Weißgrannen Züchter', '0fa2b1a5-1d68-4d69-9fbd-dff348347f93');

insert into SEC_CONSTRAINT
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, CHECK_TYPE, OPERATION_TYPE, CODE, ENTITY_NAME, JOIN_CLAUSE, WHERE_CLAUSE, GROOVY_SCRIPT, FILTER_XML, IS_ACTIVE, GROUP_ID)
values ('4f9eddcc-9755-6d46-6eeb-4c5c7c0a0904', 2, '2017-05-06 10:00:31', 'admin', '2017-05-08 11:42:51', 'admin', null, null, 'db', 'read', null, 'kukazue$Tier', null, '{E}.zuechternummer like ''WGN-%''', null, '<?xml version="1.0" encoding="UTF-8"?>

<filter>
  <and>
    <c name="zuechternummer" class="java.lang.String" operatorType="STARTS_WITH" width="1" type="PROPERTY"><![CDATA[queryEntity.zuechternummer like :component$filterWithoutId.zuechternummer08989 ESCAPE ''\'' ]]>
      <param name="component$filterWithoutId.zuechternummer08989" javaClass="java.lang.String">JAX</param>
    </c>
  </and>
</filter>
', true, 'd4a18c56-fe6a-b533-beb9-d3ff2b101749');

insert into SEC_GROUP_HIERARCHY 
(ID, GROUP_ID, PARENT_ID, HIERARCHY_LEVEL) 
values ('a01933f5-8ed3-cf5b-bbb5-2b6ccb52ff2f', 'd4a18c56-fe6a-b533-beb9-d3ff2b101749', '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', 0);

-------------------------------------------------------------------------------------------------------------------------------------
--  Weißgrannen User
-------------------------------------------------------------------------------------------------------------------------------------

insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK)
values ('232663e0-a781-feaf-a570-45bde5608829', 2, '2017-05-06 09:57:51', 'admin', '2017-05-06 09:59:32', 'admin', null, null, 'mario', 'mario', '40510b313bb20d4a78b3bc28d865f2e4a7a2caf4', null, null, null, null, null, null, 'en', null, null, true, false, 'd4a18c56-fe6a-b533-beb9-d3ff2b101749', null);




-------------------------------------------------------------------------------------------------------------------------------------
--  Mitarbeiter Rolle
-------------------------------------------------------------------------------------------------------------------------------------

insert into SEC_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE)
values ('283485bb-ad71-ae8a-629e-faa3694f1dc0', 1, '2017-05-06 09:58:39', 'admin', '2017-05-06 09:58:39', null, null, null, 'Mitarbeiter', null, null, 0, null);

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('12971bad-b71c-5949-9d03-f663ac6dd1e7', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 30, 'kukazue$Tier:deleteTs', 2, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('28c92199-8813-11d0-5e22-ffa5fb463ff7', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 30, 'kukazue$Tier:updatedBy', 2, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('c641af6c-fcd1-a8a4-4699-7283ea930017', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 20, 'kukazue$Tier:update', 1, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b3602eaa-83be-74c9-cd95-6a7e5de58774', 1, '2017-05-06 09:58:39', 'admin', '2017-05-06 09:58:39', null, null, null, 10, 'administration', 0, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('6aa050b3-258c-9e8d-ba09-42bcf9e14581', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 30, 'kukazue$Tier:vater', 2, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('8073eb67-14d1-5579-0e48-620ba98104d7', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 30, 'kukazue$Tier:updateTs', 2, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('65728257-469b-18c8-f33a-02478b4251c3', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 30, 'kukazue$Tier:geburtstdatum', 1, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('fb4cc56b-fa51-bf33-25d4-78d274ef5e7c', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 20, 'kukazue$Tier:read', 1, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('02f8bd02-4f55-cecf-da0c-dc91ad8f2302', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 30, 'kukazue$Tier:geschlecht', 1, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('ce605ce6-c395-8d9b-74d0-62b877cc5c7d', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 30, 'kukazue$Tier:deletedBy', 2, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('00375544-9fae-5797-affe-8e3f21cf1db2', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 30, 'kukazue$Tier:version', 2, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('f1d8bb68-9b3d-c978-4662-1b34a36a957e', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 30, 'kukazue$Tier:zuechternummer', 1, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('ef670a66-19a6-f985-b792-532988efd28e', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 30, 'kukazue$Tier:mutter', 2, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('98d69048-a78c-fadb-a84e-2f07e6883cd1', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 20, 'kukazue$Tier:delete', 0, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('ad767973-9e40-4d28-1152-08874ac793e5', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 30, 'kukazue$Tier:createTs', 2, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('2cb9c227-46d4-546e-c8ed-708fc98d90d7', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 20, 'kukazue$Tier:create', 1, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b434619b-f845-c087-b25d-12b64b62a838', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 30, 'kukazue$Tier:dokumente', 2, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('cf4e4b01-1aa1-9480-a7b3-221fc386ab3a', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 30, 'kukazue$Tier:name', 2, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('2ebc3fc7-7671-3980-b088-900f9a6ec15c', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 30, 'kukazue$Tier:createdBy', 2, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('ebab2e49-a2fd-b1f9-c959-a0a40edd9619', 1, '2017-05-08 11:47:10', 'admin', '2017-05-08 11:47:10', null, null, null, 30, 'kukazue$Tier:id', 2, '283485bb-ad71-ae8a-629e-faa3694f1dc0');

