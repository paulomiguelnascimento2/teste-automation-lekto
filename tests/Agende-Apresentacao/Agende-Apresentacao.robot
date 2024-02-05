***Settings***

Resource            ../../Resources/commom/BaseWeb.robot
     
Test Teardown        Acessar Pagina Principal e Pagina de Agendamento
Documentation        Automacao da Funcionalidade de Agendamento de Apresentação da plataforma web lekto


***Test Cases***

Caso de Teste 01: Realizar Agendamento Para Diretor(a)/Coordenador(a) Escolar

     [Tags]       test_agendamento_diretor_coordenador_escolar

     Acessar Pagina de Agendamento
     Informe o nome do profissional
     Selecione o valor "Diretor"
     Preencha os demais campos obrigatorios
     Acione o Botão Para Confirmar o Agendamento
     Validar a Mensagem de Sucesso

Caso de Teste 02: Realizar Agendamento Para Educador(a)

     [Tags]   test_agendamento_educador
     
     Informe o nome do profissional
     Selecione o valor "Educador"
     Preencha os demais campos obrigatorios
     Acione o Botão Para Confirmar o Agendamento
     Validar a Mensagem de Sucesso

Caso de Teste 03: Realizar Agendamento Para Familia

     [Tags]   test_agendamento_familia
     
     Informe o nome do profissional
     Selecione o valor "Familia"
     Preencha os demais campos obrigatorios
     Acione o Botão Para Confirmar o Agendamento
     Validar a Mensagem de Sucesso

Caso de Teste 04: Realizar Agendamento Para Dono de Academia ou ProgramaContraTurno

     [Tags]   test_agendamento_Academia_ProgramaContraTurno

     Informe o nome do profissional
     Selecione o valor "Dono_Academia"
     Preencha os demais campos obrigatorios
     Acione o Botão Para Confirmar o Agendamento
     Validar a Mensagem de Sucesso

Caso de Teste 05: Realizar Agendamento Para Outro

     [Tags]   test_agendamento_Outro
     
     Informe o nome do profissional
     Selecione o valor "Outro"
     Preencha os demais campos obrigatorios
     Acione o Botão Para Confirmar o Agendamento
     Validar a Mensagem de Sucesso


Caso de Teste 06: Validar Campos Obrigatórios do Formulário

     [Tags]   test_agendamento_campos_obrigatorios_formulario
     
     Informe o nome  Lekto Automacao
     Acione o Botão Para Confirmar o Agendamento
     Validar a Mensagem de Erro


Caso de Teste 07: Validar Email Formato Inválido

     [Tags]   test_agendamento_email_formato_invalido
     
     Informe o nome  Lekto Automacao
     Selecione o valor "Dono_Academia"
     Preenchimento do campo Email com Formato Invalido  teste@
     Acione o Botão Para Confirmar o Agendamento
     Validar a Mensagem de Erro do Email com Formato Invalido



     