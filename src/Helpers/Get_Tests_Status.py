from robot.api import ExecutionResult


def get_test_status(path):
    result = ExecutionResult(path)

    # Criar dicionário para armazenar os casos de teste e contadores de status
    test_status = {}

    # Iterar sobre os testes no resultado
    for test in result.suite.tests:
        test_name = test.name

        # Verificar o status do teste
        if test_name not in test_status:
            test_status[test_name] = {'Com sucesso': 0, 'Com falha': 0}

        # Iterar sobre as keywords do teste
        for keyword in test.keywords:

            # Verificar o status da keyword
            if keyword.status == 'PASS':
                test_status[test_name]['Com sucesso'] += 1
            else:
                test_status[test_name]['Com falha'] += 1

    message = 'Resultados dos Testes de API:\n'
    for test_name, data in test_status.items():
        message += f'{test_name}:\n'
        message += f' ✅Com sucesso: {data["Com sucesso"]}\n'
        message += f' ❌Com falha: {data["Com falha"]}\n'

    return message
