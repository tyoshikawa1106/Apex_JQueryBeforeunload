/*
 * ページ切替警告
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdDate      : 2013/01/01
 * @createdName      : TAIKI,YOSHIKAWA
 * ----------------------------------------
 * @lastModifiedDate : 2013/01/01
 * @lastModifiedName : TAIKI,YOSHIKAWA
 * ----------------------------------------
 */
public with sharing class JQueryBeforeunloadController {
	
	public String input {get; set;}
	
	/*
	 * コンストラクタ
	 * @param	: なし
	 * @return	: なし
	 */
	public JQueryBeforeunloadController() {
		System.debug('◆◆◆◆JQueryBeforeunloadController:START');
		
		this.input = '';
		
		System.debug('◆◆◆◆JQueryBeforeunloadController:END');
	}
	
	/*
	 * ボタンクリック処理
	 * @param	: なし
	 * @return	: 遷移先URL
	 */
	public PageReference doClick() {
		System.debug('◆◆◆◆doClick:START');
		
		if (String.isEmpty(this.input) == true) {
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, '値が未入力です。'));
			return null;
		}
		
		System.debug('◆◆◆◆doClick:END');
		return new PageReference('/home/home.jsp');
	}
}