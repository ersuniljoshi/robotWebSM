*** Settings ***
Library  Selenium2Library

*** Variables ***
${sign_in}  xpath=//a[@class="sign-in"]
${username}  id=username
${password}  id=password
${sign_in_submit}  xpath=//button[@class="translate btn btn-large btn-arrow btn-arrow-right btn-arrow-large-horiz btn-arrow-large-right-dark yellow shadow" and @type="submit"]
${create_survey_button_start}  xpath=//a[@class="create-survey btn green SL_split"]
${start_from_scratch_button}  xpath=//button[@id="scratch"]//span
${survey_title}  id=surveyTitle
${create_survey}  xpath=//div[@class='ReactModalPortal']//button
${page_title_start}  xpath=//span[@class="page-title user-generated"]
${page_title_field}  xpath=//div[@id="pageTitle"]
${submit_page_title}  xpath=//*[@id="pageTitleForm"]/div[3]/a[1]
${add_new_ques}  xpath=//section[@class="survey-page-body"]//a[@class="main-add-question-cta btn btn-menu-left teal"]
${checkbox}  xpath=//input[@id='suggestQ']
${select_ques_from_menu}  xpath=//a[@id='changeQType']//span[1]
${single_textbox}  xpath=//a[contains(text(),'Single Textbox')]
${ques_edit_field}  id=editTitle
${save}  css=a[class='btn teal save']
${dropdown}  xpath=//a[.="Dropdown"]
${dropdown_first_option}  xpath=.//table[@id='rows']/tbody/tr[3]/td[2]/div/div[1]
${dropdown_second_option}  xpath=.//table[@id='rows']/tbody/tr[4]/td[2]/div/div[1]
${mouse_scroll_up}  xpath=//a[@id="userAcctTab_MainMenu"]
