--
-- this script remove all symbols parameters from the table STCA_PARAM
-- Oracle version
--

declare 
   owner varchar2(50):='PSUDCAT';  -- STCA_PARAM table owner
   numberseq   number:=0   ;  -- Number of sequence in this table owner
   
begin

  execute immediate 'delete '||owner||'.STCA_RO_PA where PA_IDENT in (select PA_IDENT FROM '||owner||'.STCA_PARAM where PA_TYPE like ''APIC_SYM%'')';
  execute immediate 'delete '||owner||'.STCA_PARAM where PA_TYPE like ''APIC_SYM%''';
  execute immediate 'delete '||owner||'.STCA_PARAM where PA_TYPE = ''ELYX_SYNCHRO_SYMBOL''';

commit;
  
end;
/


