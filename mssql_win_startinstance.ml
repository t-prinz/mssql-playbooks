---
- name: Start MS SQL Server service
  hosts: "{{ hostlist | default('all') }}"
  vars:
    sqlsvr_service: MSSQLSERVER
  tasks:

    - name: Run basic PowerShell script
      ansible.windows.win_powershell:
        script: |
          Start-Service "{{ sqlsvr_service }}"
