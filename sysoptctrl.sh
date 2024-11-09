#!/bin/bash

VERSION="v0.1.0"

function show_help() {
    echo "sysopctl - A command-line tool for system operations"
    echo "Usage: sysopctl [OPTIONS] COMMAND [ARGS]"
    echo ""
    echo "Options:"
    echo "  --help        Show this help message"
    echo "  --version     Show the version of sysopctl"
    echo ""
    echo "Commands:"
    echo "  service list                 List all running services"
    echo "  service start <name>         Start a service"
    echo "  service stop <name>          Stop a service"
    echo "  system load                  View system load"
    echo "  disk usage                   Check disk usage"
    echo "  process monitor              Monitor system processes"
    echo "  logs analyze                 Analyze system logs"
    echo "  backup <path>                Backup specified files"
}

function service_list() {
    echo "Listing all active services:"
    systemctl list-units --type=service
}

function system_load() {
    echo "Current system load:"
    uptime
}

function service_start() {
    local service_name="$1"
    if systemctl start "$service_name"; then
        echo "Service $service_name started successfully."
    else
        echo "Failed to start service $service_name."
    fi
}

function service_stop() {
    local service_name="$1"
    if systemctl stop "$service_name"; then
        echo "Service $service_name stopped successfully."
    else
        echo "Failed to stop service $service_name."
    fi
}

function disk_usage() {
    echo "Disk usage statistics:"
    df -h
}




case "$1" in
    --help)
        show_help
        ;;
    --version)
        echo "sysopctl $VERSION"
        ;;
    service)
        case "$2" in
            list)
                service --status-all
                ;;
            start)
                sudo service "$3" "start"
                ;;
            stop)
                sudo service "$3" "stop"
                ;;
            *)
                echo "Unknown service command: $2"
                ;;
        esac
        ;;
    system)
        if [ "$2" == "load" ]; then
            system_load
        else
            echo "Unknown system command: $2"
        fi
        ;;
    disk)
        if [ "$2" == "usage" ]; then
            disk_usage
        else
            echo "Unknown disk command: $2"
        fi
        ;;
    *)
        echo "Unknown command: $1"
        show_help
        ;;
esac


