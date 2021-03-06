{*<!--
/*********************************************************************************
** The contents of this file are subject to the vtiger CRM Public License Version 1.0
* ("License"); You may not use this file except in compliance with the License
* The Original Code is:  vtiger CRM Open Source
* The Initial Developer of the Original Code is vtiger.
* Portions created by vtiger are Copyright (C) vtiger.
* All Rights Reserved.
*
********************************************************************************/
-->*}
{strip}
	<!-- tpl-Import-ImportResult -->
	<button class="create btn btn-success btn-sm mr-2 mb-sm-3 mb-md-0" name="next"
			onclick="location.href = 'index.php?module={$FOR_MODULE}&view=Import&return_module={$FOR_MODULE}&return_action=index'">
		<strong>{\App\Language::translate('LBL_IMPORT_MORE', $MODULE)}</strong>
	</button>
	<button class="cancel btn btn-primary btn-sm mr-2 mb-sm-3 mb-md-0" name="next"
			onclick="return window.open('index.php?module={$MODULE}&forModule={$FOR_MODULE}&view=List&start=1&foruser={$OWNER_ID}', 'test', 'width=700,height=650,resizable=1,scrollbars=0,top=150,left=200');">
		<strong>{\App\Language::translate('LBL_VIEW_LAST_IMPORTED_RECORDS', $MODULE)}</strong>
	</button>
	{if $MERGE_ENABLED eq '0'}
		<button class="delete btn btn-danger btn-sm mr-2 mb-sm-3 mb-md-0" name="next"
				onclick="location.href = 'index.php?module={$FOR_MODULE}&view=Import&mode=undoImport&foruser={$OWNER_ID}&type={$TYPE}'">
			<strong>{\App\Language::translate('LBL_UNDO_LAST_IMPORT', $MODULE)}</strong>
		</button>
	{/if}
	<button class="edit btn btn-success btn-sm mb-sm-3 mb-md-0" name="cancel"
			onclick="location.href = 'index.php?module={$FOR_MODULE}&view=List{if $FOR_MODULE eq 'Users'}&parent=Settings{/if}'">
		<strong>{\App\Language::translate('LBL_FINISH_BUTTON_LABEL', $MODULE)}</strong>
	</button>
	<!-- /tpl-Import-ImportResult -->
{/strip}