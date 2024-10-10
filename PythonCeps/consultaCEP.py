import requests

enderecos = [
    "ALAMEDA ITÚ",
    "ALAMEDA LORENA",
    # ... (adicione os outros endereços aqui)
]

def buscar_cep(endereco):
    url = f"https://viacep.com.br/ws/{endereco.replace(' ', '%20')}/json/"
    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()
        return data.get("cep", "Não encontrado")
    return "Cep Não Encontrado"

for endereco in enderecos:
    print(f"{endereco} / {buscar_cep(endereco)}")
