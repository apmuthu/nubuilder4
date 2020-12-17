## Entity Relationship Diagram (ERD) for Nubuilder4

#### Main set of tables
![Main ERD](./images/nub4_Main_ERD.png)

#### User Access Permissions ERD
![Access ERD](./images/nub4_Access_ERD.png)

#### Standalone and Settings ERD
![Settings ERD](./images/Nubuilder4_Settings_ERD.png)

## set_denied to hide system forms and objects
***Setup => set_denied*** can be ticked to hide all NuBuilder's forms and objects. Useful for developers.
![set_denied Setting](./images/set_denied_screenshot.png)

Existing users can backport this feature with:
```sql
UPDATE `zzzzsys_form` SET `sfo_javascript` = '$(\'#set_header\').addClass(\'html\');\n  \n$(\'.html\').dblclick(function() {\n	nuOpenAce(\'HTML\', this.id);\n});\n\nnuHide(\'nuDeleteButton\');\nnuHide(\'nuCloneButton\');\n\nnuSetToolTip(\'set_denied\',\'Allow access to core forms of nuBuilder.\', true);\n' WHERE `zzzzsys_form_id` = 'nusetup';

INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`,`sob_all_zzzzsys_form_id`,`sob_all_table`,`sob_all_type`,`sob_all_id`,`sob_all_label`,`sob_all_zzzzsys_tab_id`,`sob_all_order`,`sob_all_top`,`sob_all_left`,`sob_all_width`,`sob_all_height`,`sob_all_cloneable`,`sob_all_align`,`sob_all_validate`,`sob_all_access`,`sob_calc_formula`,`sob_calc_format`,`sob_run_zzzzsys_form_id`,`sob_run_filter`,`sob_run_method`,`sob_run_id`,`sob_display_sql`,`sob_select_multiple`,`sob_select_sql`,`sob_lookup_code`,`sob_lookup_description`,`sob_lookup_description_width`,`sob_lookup_autocomplete`,`sob_lookup_zzzzsys_form_id`,`sob_lookup_javascript`,`sob_lookup_php`,`sob_lookup_table`,`sob_subform_zzzzsys_form_id`,`sob_subform_foreign_key`,`sob_subform_add`,`sob_subform_delete`,`sob_subform_type`,`sob_subform_table`,`sob_input_count`,`sob_input_format`,`sob_input_type`,`sob_input_javascript`,`sob_html_code`,`sob_html_chart_type`,`sob_html_javascript`,`sob_html_title`,`sob_html_vertical_label`,`sob_html_horizontal_label`,`sob_image_zzzzsys_file_id`) VALUES
('5fdba6246ffc449','nusetup','zzzzsys_setup','input','set_denied','Access denied','nu5bad6cb36d97acd',40,157,217,20,18,'1','left','0','0','','','','','','','','','','stz_timezone','stz_timezone','0',NULL,'nutimezone','',NULL,'zzzzsys_timezone','','','','','','',0,'','checkbox','','','','','','','','');

```
