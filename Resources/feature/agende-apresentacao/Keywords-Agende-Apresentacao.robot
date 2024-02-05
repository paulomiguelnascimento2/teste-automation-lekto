*** Settings ***

Resource          ../../commom/BaseWeb.robot


***Keywords***

Acessar Pagina de Agendamento

           Open Browser    ${URL}   ${BROWSER}
           Maximize Browser Window
           Wait Until Element Is Visible     css=.btn.btn--border.theme-btn--primary-inverse.sqs-button-element--primary
           Click Element                     css=.btn.btn--border.theme-btn--primary-inverse.sqs-button-element--primary

Acessar Pagina Principal e Pagina de Agendamento

        Wait Until Element Is Visible     xpath=//*[@id="header"]/div[2]/div[4]/div[2]/div[1]/div[1]/div/a/img
        Click Element                     xpath=//*[@id="header"]/div[2]/div[4]/div[2]/div[1]/div[1]/div/a/img

        Wait Until Element Is Visible     css=.btn.btn--border.theme-btn--primary-inverse.sqs-button-element--primary
        Click Element                     css=.btn.btn--border.theme-btn--primary-inverse.sqs-button-element--primary


Informe o nome do profissional

    Wait Until Element Is Visible  id=text-yui_3_17_2_1_1593033605278_167399-field
    Click Element                  id=text-yui_3_17_2_1_1593033605278_167399-field
    ${nome_ficticio}=    FakerLibrary.First Name
    Input Text    id=text-yui_3_17_2_1_1593033605278_167399-field   ${nome_ficticio}
    Capture Page Screenshot 

Selecione o valor "${Campo_Sou}"

    IF  '${Campo_Sou}' == 'Diretor'
    Select From List By Label  id=select-yui_3_17_2_1_1593033605278_168358-field  Diretor(a)/Coordenador(a) Escolar
    Capture Page Screenshot 

    ELSE IF  '${Campo_Sou}' == 'Educador'
        Select From List By Label  id=select-yui_3_17_2_1_1593033605278_168358-field  Educador(a)
        Capture Page Screenshot 

    ELSE IF  '${Campo_Sou}' == 'Familia'
        Select From List By Label  id=select-yui_3_17_2_1_1593033605278_168358-field  Família
        Capture Page Screenshot

    ELSE IF  '${Campo_Sou}' == 'Dono_Academia'
        Select From List By Label  id=select-yui_3_17_2_1_1593033605278_168358-field  Dono de Academia ou Programa de Contraturno
        Capture Page Screenshot

    ELSE IF  '${Campo_Sou}' == 'Outro'
        Select From List By Label  id=select-yui_3_17_2_1_1593033605278_168358-field  Outro
        Capture Page Screenshot 
    END

Preencha os demais campos obrigatorios

    Wait Until Element Is Visible    id=email-yui_3_17_2_1_1593039425574_26430-field
    ${email_ficticio}=    FakerLibrary.Email
    Input Text    id=email-yui_3_17_2_1_1593039425574_26430-field   ${email_ficticio}
    Capture Page Screenshot 

    Wait Until Element Is Visible    id=text-yui_3_17_2_1_1593039425574_26431-field
    ${telefone_ficticio}=    FakerLibrary.Phone Number
    Input Text    id=text-yui_3_17_2_1_1593039425574_26431-field  ${telefone_ficticio}
    Capture Page Screenshot 


    Wait Until Element Is Visible    id=textarea-yui_3_17_2_1_1593039425574_26432-field
    Input Text    id=textarea-yui_3_17_2_1_1593039425574_26432-field    Teste formulario
    Capture Page Screenshot 


Acione o Botão Para Confirmar o Agendamento


    Wait Until Element Is Visible    xpath=//button[contains(@class, 'button') and contains(@class, 'sqs-system-button') and contains(@class, 'sqs-editable-button') and contains(@class, 'sqs-button-element--primary') and text()='Quero a Lekto na minha escola!']
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep  1
    Click Element    xpath=//button[contains(@class, 'button') and contains(@class, 'sqs-system-button') and contains(@class, 'sqs-editable-button') and contains(@class, 'sqs-button-element--primary') and text()='Quero a Lekto na minha escola!']
    Capture Page Screenshot 
    Sleep  1

Validar a Mensagem de Sucesso

         Page Should Contain                Muito obrigado! Em breve retornaremos seu contato.


Informe o nome

    [Arguments]    ${nome_sem_bliblioteca_faker}
    Wait Until Element Is Visible  id=text-yui_3_17_2_1_1593033605278_167399-field
    Click Element                  id=text-yui_3_17_2_1_1593033605278_167399-field
    Input Text    id=text-yui_3_17_2_1_1593033605278_167399-field   ${nome_sem_bliblioteca_faker}


Validar a Mensagem de Erro

    Page Should Contain                Form submission failed. Review the following information: Sou, Email, Telefone, and Mensagem.
    Page Should Contain                Sou is required. 
    Page Should Contain                Email is required. 
    Page Should Contain                Telefone is required.
    Page Should Contain                Mensagem is required. 



Preenchimento do campo Email com Formato Invalido

    [Arguments]  ${email_formato_invalido}
    Wait Until Element Is Visible    id=email-yui_3_17_2_1_1593039425574_26430-field
    Input Text    id=email-yui_3_17_2_1_1593039425574_26430-field   ${email_formato_invalido}
    Capture Page Screenshot 

    Wait Until Element Is Visible    id=text-yui_3_17_2_1_1593039425574_26431-field
    ${telefone_ficticio}=    FakerLibrary.Phone Number
    Input Text    id=text-yui_3_17_2_1_1593039425574_26431-field  ${telefone_ficticio}
    Capture Page Screenshot 


    Wait Until Element Is Visible    id=textarea-yui_3_17_2_1_1593039425574_26432-field
    Input Text    id=textarea-yui_3_17_2_1_1593039425574_26432-field    Teste formulario
    Capture Page Screenshot 

Validar a Mensagem de Erro do Email com Formato Invalido

     Page Should Contain                Form submission failed. Review the following information: Sou, Email, Telefone, and Mensagem.
     Page Should Contain                Email is not valid. Email addresses should follow the format user@domain.com.   
