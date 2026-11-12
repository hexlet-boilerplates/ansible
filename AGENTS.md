# AGENTS.md

Плейбук Ansible. Хосты описаны в `inventory.ini`, задачи в `playbook.yaml`.

## Команды

| Команда | Что делает |
| --- | --- |
| `make install` | Ставит инструменты из `mise.toml` и git-хуки |
| `make run-playbook` | Применяет `playbook.yaml` к хостам из `inventory.ini` |
| `make lint` | Проверяет плейбук через `ansible-lint` |

## Проверки

`make lint` также проверяет Markdown (`rumdl`), опечатки (`typos`) и workflow GitHub Actions (`jactionlint`). Тестов нет. `make install` ставит git-хуки hk, перед коммитом они запускают `make lint`.

Перед завершением задачи запусти `make lint`, команда должна проходить.

## Окружение

Инструменты и их версии задаёт `mise.toml`, ставит их `mise install`.
