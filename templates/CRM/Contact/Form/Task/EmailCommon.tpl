{*
 +--------------------------------------------------------------------+
 | Copyright CiviCRM LLC. All rights reserved.                        |
 |                                                                    |
 | This work is published under the GNU AGPLv3 license with some      |
 | permitted exceptions and without any warranty. For full license    |
 | and copyright information, see https://civicrm.org/licensing       |
 +--------------------------------------------------------------------+
*}
{*common template for compose mail*}

<details class="crm-accordion-bold crm-html_email-accordion " open>
<summary>
    {ts}HTML Format{/ts}
    {help id="id-message-text" file="CRM/Contact/Form/Task/Email.hlp"}
</summary>
 <div class="crm-accordion-body">
  <div class="helpIcon" id="helphtml">
    <input class="crm-token-selector big" data-field="html_message" />
    {help id="id-token-html" file="CRM/Contact/Form/Task/Email.hlp"}
  </div>
  <div class="clear"></div>
    <div class='html'>
      {$form.html_message.html}<br />
    </div>
  </div>
</details>

<details class="crm-accordion-bold crm-plaint_text_email-accordion">
<summary>
  {ts}Plain-Text Format{/ts}
  </summary>
 <div class="crm-accordion-body">
   <div class="helpIcon" id="helptext">
     <input class="crm-token-selector big" data-field="text_message" />
     {help id="id-token-text" tplFile=$tplFile file="CRM/Contact/Form/Task/Email.hlp"}
   </div>
    <div class='text'>
      {$form.text_message.html}<br />
    </div>
  </div>
</details>
<div id="editMessageDetails" class="section">
  {if call_user_func(array('CRM_Core_Permission','check'), 'edit message templates')}
      <div id="updateDetails" class="section" >
    {$form.updateTemplate.html}&nbsp;{$form.updateTemplate.label}
      </div>
      <div class="section">
    {$form.saveTemplate.html}&nbsp;{$form.saveTemplate.label}
      </div>
  {/if}
</div>

<div id="saveDetails" class="section">
   <div class="label">{$form.saveTemplateName.label}</div>
   <div class="content">{$form.saveTemplateName.html|crmAddClass:huge}</div>
</div>

{if !$noAttach}
    {include file="CRM/Form/attachment.tpl"}
{/if}

{include file="CRM/Mailing/Form/InsertTokens.tpl"}
