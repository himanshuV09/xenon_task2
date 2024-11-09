# sysopctl - A Command-Line Tool for System Operations

`sysopctl` is a simple and easy-to-use command-line tool designed to assist with various system operations, such as managing services, checking system load, monitoring disk usage, and more.

## Features

- **Manage Services**: List, start, and stop services using the systemd service manager.
- **System Load**: View the current system load and uptime.
- **Disk Usage**: Check the disk usage statistics of the system.
- **Expandability**: Easily extendable to support additional system operations.

## Installation

To use `sysopctl`, simply download and execute the script on your Linux-based system. Ensure you have the necessary permissions (e.g., `sudo` for service management).

### Example Installation

```bash
curl -O https://example.com/sysopctl.sh
chmod +x sysopctl.sh
```

Or clone the repository (if available) and make the script executable.

## Usage

```bash
sysopctl [OPTIONS] COMMAND [ARGS]
```

### Options

- `--help`: Show the help message.
- `--version`: Show the version of `sysopctl`.

### Commands

- **service**: Manage system services.
    - `service list`: List all running services.
    - `service start <name>`: Start a specified service.
    - `service stop <name>`: Stop a specified service.
  
- **system**: View system-related information.
    - `system load`: View the current system load and uptime.

- **disk**: View disk-related information.
    - `disk usage`: Check the disk usage statistics of the system.

### Examples

#### View Help Message

```bash
sysopctl --help
```

Output:
```
sysopctl - A command-line tool for system operations
Usage: sysopctl [OPTIONS] COMMAND [ARGS]

Options:
  --help        Show this help message
  --version     Show the version of sysopctl

Commands:
  service list                 List all running services
  service start <name>         Start a service
  service stop <name>          Stop a service
  system load                  View system load
  disk usage                   Check disk usage
  process monitor              Monitor system processes
  logs analyze                 Analyze system logs
  backup <path>                Backup specified files
```

#### View Version

```bash
sysopctl --version
```

Output:
```
sysopctl v0.1.0
```

#### List Active Services

```bash
sysopctl service list
```

Output:
```
Listing all active services:
● apache2.service   loaded active running   The Apache HTTP Server
● nginx.service     loaded active running   Nginx web server
...
```

#### Start a Service

```bash
sysopctl service start apache2
```

Output:
```
Service apache2 started successfully.
```

#### Stop a Service

```bash
sysopctl service stop apache2
```

Output:
```
Service apache2 stopped successfully.
```

#### View System Load

```bash
sysopctl system load
```

Output:
```
Current system load:
 15:34:21 up 3 days,  5:13,  0 users,  load average: 0.15, 0.23, 0.19
```

#### Check Disk Usage

```bash
sysopctl disk usage
```

Output:
```
Disk usage statistics:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   22G   28G  45% /
/dev/sdb1        200G  150G   50G  75% /mnt/data
```

## Error Handling

If an unknown command or argument is used, the script will display an error message and the help message:

Example:

```bash
sysopctl foo
```

Output:

Unknown command: foo
Usage: sysopctl [OPTIONS] COMMAND [ARGS]

