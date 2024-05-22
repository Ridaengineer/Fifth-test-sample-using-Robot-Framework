*** Settings ***
Library    String
Documentation   Strings Manipulation

*** Test Cases ***
Converting to LowerCase Example
    [Documentation]     Convert to LowerCase
    ${Company_Name}=    convert to lower case   ALTEN MAROC
    should be lower case    ${Company_Name}
    should be equal         ${Company_Name}     alten maroc

Converting to UpperCase Example
    [Documentation]     Convert to UpperCase
    ${First_Names}=    convert to upper case   rida & achraf
    should be upper case    ${First_Names}
    should be equal         ${First_Names}     RIDA & ACHRAF

Remove String Example
    [Documentation]    Remove a string
    ${Message} =	Remove String	    Alten is the Bbest    B
    should be equal     ${Message}      Alten is the best

Replace String Example
    [Documentation]    Replace a string
    ${New_Message} =	Replace String	Hello world!	world	everyone
    should be equal     ${New_Message}      Hello everyone!
