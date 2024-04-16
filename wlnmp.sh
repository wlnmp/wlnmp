#!/bin/bash

# Author: WuHao
# Version: 2.0.1
# Date: 2024-04-16
# Website: https://www.wlnmp.com/

# Function to display an error message and exit
function display_error() {
	echo "Error: $1" >&2
	exit 1
}

# Function to install WLNMP repository based on Anolis OS 8 version
function install_wlnmp_Anolis_OS_8_repository() {

	wlnmp_package="wlnmp-release-anolisos"
	repo_file="/etc/yum.repos.d/wlnmp-release-anolisos.repo"
	repo_url="https://mirrors.wlnmp.com/anolisos/wlnmp-release-anolisos-8.noarch.rpm"

	# Check if wlnmp-release-anolis package is installed
	if rpm -q "$wlnmp_package" >/dev/null; then
		echo "$wlnmp_package package is already installed."

		# Check if wlnmp-release-anolis.repo file exists
		if [ -e "$repo_file" ]; then
			echo "$repo_file exists. Skipping installation."
			return
		else
			echo "$repo_file does not exist. Uninstalling $wlnmp_package."
			sudo rpm -e $wlnmp_package 2>/dev/null
		fi
	fi

	printf "Detected Anolis OS 8. Installing WLNMP Anolis OS 8 repository"

	# Simulate waiting with dots
	for i in {1..6}; do
		printf "."
		sleep 1
	done

	printf "\n"

	if sudo rpm -ivh "$repo_url"; then
		echo "WLNMP Anolis OS 8 repository installed successfully!"
	else
		display_error "Installation failed. Please check your network and retry."
	fi
}

# Function to install WLNMP repository based on Rocky Linux 8 version
function install_wlnmp_Rocky_Linux_8_repository() {

	wlnmp_package="wlnmp-release-rocky"
	repo_file="/etc/yum.repos.d/wlnmp-release-rocky.repo"
	repo_url="https://mirrors.wlnmp.com/rockylinux/wlnmp-release-rocky-8.noarch.rpm"

	# Check if wlnmp-release-rocky package is installed
	if rpm -q "$wlnmp_package" >/dev/null; then
		echo "$wlnmp_package package is already installed."

		# Check if wlnmp-release-rocky.repo file exists
		if [ -e "$repo_file" ]; then
			echo "$repo_file exists. Skipping installation."
			return
		else
			echo "$repo_file does not exist. Uninstalling $wlnmp_package."
			sudo rpm -e $wlnmp_package 2>/dev/null
		fi
	fi

	printf "Detected Rocky Linux OS 8. Installing WLNMP Rocky Linux OS 8 repository"

	# Simulate waiting with dots
	for i in {1..6}; do
		printf "."
		sleep 1
	done

	printf "\n"
		
	if sudo rpm -ivh "$repo_url"; then
		echo "WLNMP Rocky Linux OS 8 repository installed successfully!"
	else
		display_error "Installation failed. Please check your network and retry."
	fi
}

# Function to install WLNMP repository based on AlmaLinux OS 8 version
function install_wlnmp_AlmaLinux_OS_8_repository() {

	wlnmp_package="wlnmp-release-almalinux"
	repo_file="/etc/yum.repos.d/wlnmp-release-almalinux.repo"
	repo_url="https://mirrors.wlnmp.com/almalinux/wlnmp-release-almalinux-8.noarch.rpm"

	# Check if wlnmp-release-almalinux package is installed
	if rpm -q "$wlnmp_package" >/dev/null; then
		echo "$wlnmp_package package is already installed."

		# Check if wlnmp-release-almalinux.repo file exists
		if [ -e "$repo_file" ]; then
			echo "$repo_file exists. Skipping installation."
			return
		else
			echo "$repo_file does not exist. Uninstalling $wlnmp_package."
			sudo rpm -e $wlnmp_package 2>/dev/null
		fi
	fi

	printf "Detected AlmaLinux OS 8. Installing WLNMP AlmaLinux OS 8 repository"

	# Simulate waiting with dots
	for i in {1..6}; do
		printf "."
		sleep 1
	done

	printf "\n"

	if sudo rpm -ivh "$repo_url"; then
		echo "WLNMP AlmaLinux OS 8 repository installed successfully!"
	else
		display_error "Installation failed. Please check your network and retry."
	fi
}

# Function to install WLNMP repository based on AlmaLinux OS 9 version
function install_wlnmp_AlmaLinux_OS_9_repository() {

	wlnmp_package="wlnmp-release-almalinux"
	repo_file="/etc/yum.repos.d/wlnmp-release-almalinux.repo"
	repo_url="https://mirrors.wlnmp.com/almalinux/wlnmp-release-almalinux-9.noarch.rpm"

	# Check if wlnmp-release-almalinux package is installed
	if rpm -q "$wlnmp_package" >/dev/null; then
		echo "$wlnmp_package package is already installed."

		# Check if wlnmp-release-almalinux.repo file exists
		if [ -e "$repo_file" ]; then
			echo "$repo_file exists. Skipping installation."
			return
		else
			echo "$repo_file does not exist. Uninstalling $wlnmp_package."
			sudo rpm -e $wlnmp_package 2>/dev/null
		fi
	fi

	printf "Detected AlmaLinux OS 9. Installing WLNMP AlmaLinux OS 9 repository"

	# Simulate waiting with dots
	for i in {1..6}; do
		printf "."
		sleep 1
	done

	printf "\n"

	if sudo rpm -ivh "$repo_url"; then
		echo "WLNMP AlmaLinux OS 9 repository installed successfully!"
	else
		display_error "Installation failed. Please check your network and retry."
	fi
}

# Function to install WLNMP repository based on openEuler OS 20.03 version
function install_wlnmp_openEuler_OS_20_03_repository() {

	wlnmp_package="wlnmp-release-openeuler"
	repo_file="/etc/yum.repos.d/wlnmp-release-openeuler.repo"
	repo_url="https://mirrors.wlnmp.com/openeuler/wlnmp-release-openeuler.noarch.rpm"

	# Check if wlnmp-release-openeuler package is installed
	if rpm -q "$wlnmp_package" >/dev/null; then
		echo "$wlnmp_package package is already installed."

		# Check if wlnmp-release-openeuler.repo file exists
		if [ -e "$repo_file" ]; then
			echo "$repo_file exists. Skipping installation."
			return
		else
			echo "$repo_file does not exist. Uninstalling $wlnmp_package."
			sudo rpm -e $wlnmp_package 2>/dev/null
		fi
	fi

	printf "Detected openEuler OS 20.03. Installing WLNMP openEuler OS 20.03 repository"

	# Simulate waiting with dots
	for i in {1..6}; do
		printf "."
		sleep 1
	done

	printf "\n"

	if sudo rpm -ivh "$repo_url"; then
		echo "WLNMP openEuler OS 20.03 repository installed successfully!"
	else
		display_error "Installation failed. Please check your network and retry."
	fi
}

# Function to install WLNMP repository based on openEuler OS 22.03 version
function install_wlnmp_openEuler_OS_22_03_repository() {

	wlnmp_package="wlnmp-release-openeuler"
	repo_file="/etc/yum.repos.d/wlnmp-release-openeuler.repo"
	repo_url="https://mirrors.wlnmp.com/openeuler/wlnmp-release-openeuler.noarch.rpm"

	# Check if wlnmp-release-openeuler package is installed
	if rpm -q "$wlnmp_package" >/dev/null; then
		echo "$wlnmp_package package is already installed."

		# Check if wlnmp-release-openeuler.repo file exists
		if [ -e "$repo_file" ]; then
			echo "$repo_file exists. Skipping installation."
			return
		else
			echo "$repo_file does not exist. Uninstalling $wlnmp_package."
			sudo rpm -e $wlnmp_package 2>/dev/null
		fi
	fi

	printf "Detected openEuler OS 22.03. Installing WLNMP openEuler OS 22.03 repository"

	# Simulate waiting with dots
	for i in {1..6}; do
		printf "."
		sleep 1
	done

	printf "\n"

	if sudo rpm -ivh "$repo_url"; then
		echo "WLNMP openEuler OS 22.03 repository installed successfully!"
	else
		display_error "Installation failed. Please check your network and retry."
	fi
}

# Function to install WLNMP repository based on opencloudos 8 version
function install_wlnmp_opencloudos_8_repository() {

	wlnmp_package="wlnmp-release-opencloudos"
	repo_file="/etc/yum.repos.d/wlnmp-release-opencloudos.repo"
	repo_url="https://mirrors.wlnmp.com/opencloudos/wlnmp-release-opencloudos-8.noarch.rpm"

	# Check if wlnmp-release-opencloudos package is installed
	if rpm -q "$wlnmp_package" >/dev/null; then
		echo "$wlnmp_package package is already installed."

		# Check if wlnmp-release-opencloudos.repo file exists
		if [ -e "$repo_file" ]; then
			echo "$repo_file exists. Skipping installation."
			return
		else
			echo "$repo_file does not exist. Uninstalling $wlnmp_package."
			sudo rpm -e $wlnmp_package 2>/dev/null
		fi
	fi

	printf "Detected opencloudos 8. Installing WLNMP opencloudos 8 repository"

	# Simulate waiting with dots
	for i in {1..6}; do
		printf "."
		sleep 1
	done

	printf "\n"

	if sudo rpm -ivh "$repo_url"; then
		echo "WLNMP opencloudos 8 repository installed successfully!"
	else
		display_error "Installation failed. Please check your network and retry."
	fi
}

# Function to install WLNMP repository based on Alibaba Cloud Linux 3 version
function install_wlnmp_Alibaba_Cloud_Linux_3_repository() {

	wlnmp_package="wlnmp-release-alinux"
	repo_file="/etc/yum.repos.d/wlnmp-release-alinux.repo"
	repo_url="https://mirrors.wlnmp.com/alinux/wlnmp-release-alinux.noarch.rpm"

	# Check if wlnmp-release-alinux package is installed
	if rpm -q "$wlnmp_package" >/dev/null; then
		echo "$wlnmp_package package is already installed."

		# Check if wlnmp-release-alinux.repo file exists
		if [ -e "$repo_file" ]; then
			echo "$repo_file exists. Skipping installation."
			return
		else
			echo "$repo_file does not exist. Uninstalling $wlnmp_package."
			sudo rpm -e $wlnmp_package 2>/dev/null
		fi
	fi

	printf "Detected Alibaba Cloud Linux 3. Installing WLNMP Alibaba Cloud Linux 3 repository"

	# Simulate waiting with dots
	for i in {1..6}; do
		printf "."
		sleep 1
	done

	printf "\n"

	if sudo rpm -ivh "$repo_url"; then
		echo "WLNMP Alibaba Cloud Linux 3 repository installed successfully!"
	else
		display_error "Installation failed. Please check your network and retry."
	fi
}

# Function to install WLNMP repository based on Alibaba Cloud Linux 2 version
function install_wlnmp_Alibaba_Cloud_Linux_2_repository() {

	wlnmp_package="wlnmp-release-alinux"
	repo_file="/etc/yum.repos.d/wlnmp-release-alinux.repo"
	repo_url="https://mirrors.wlnmp.com/alinux/wlnmp-release-alinux.noarch.rpm"

	# Check if wlnmp-release-alinux package is installed
	if rpm -q "$wlnmp_package" >/dev/null; then
		echo "$wlnmp_package package is already installed."

		# Check if wlnmp-release-alinux.repo file exists
		if [ -e "$repo_file" ]; then
			echo "$repo_file exists. Skipping installation."
			return
		else
			echo "$repo_file does not exist. Uninstalling $wlnmp_package."
			sudo rpm -e $wlnmp_package 2>/dev/null
		fi
	fi

	printf "Detected Alibaba Cloud Linux 2.1903. Installing WLNMP Alibaba Cloud Linux 2.1903 repository"

	# Simulate waiting with dots
	for i in {1..6}; do
		printf "."
		sleep 1
	done

	printf "\n"

	if sudo rpm -ivh "$repo_url"; then
		echo "WLNMP Alibaba Cloud Linux 2.1903 repository installed successfully!"
	else
		display_error "Installation failed. Please check your network and retry."
	fi
}

# Function to install WLNMP repository based on CentOS 6 version
function install_wlnmp_centos_6_repository() {

	wlnmp_package="wlnmp-release-centos"
	repo_file="/etc/yum.repos.d/wlnmp-release-centos.repo"
	repo_url="https://mirrors.wlnmp.com/centos/wlnmp-release-centos.noarch.rpm"

	# Check if wlnmp-release-centos package is installed
	if rpm -q "$wlnmp_package" >/dev/null; then
		echo "$wlnmp_package package is already installed."

		# Check if wlnmp-release-centos.repo file exists
		if [ -e "$repo_file" ]; then
			echo "$repo_file exists. Skipping installation."
			return
		else
			echo "$repo_file does not exist. Uninstalling $wlnmp_package."
			sudo rpm -e $wlnmp_package 2>/dev/null
		fi
	fi

	printf "Detected CentOS 6. Installing WLNMP CentOS 6 repository"

	# Simulate waiting with dots
	for i in {1..6}; do
		printf "."
		sleep 1
	done

	printf "\n"

	if sudo rpm -ivh "$repo_url"; then
		echo "WLNMP CentOS 6 repository installed successfully!"
	else
		display_error "Installation failed. Please check your network and retry."
	fi
}

# Function to install WLNMP repository based on CentOS 7 version
function install_wlnmp_centos_7_repository() {

	wlnmp_package="wlnmp-release-centos"
	repo_file="/etc/yum.repos.d/wlnmp-release-centos.repo"
	repo_url="https://mirrors.wlnmp.com/centos/wlnmp-release-centos.noarch.rpm"

	# Check if wlnmp-release-centos package is installed
	if rpm -q "$wlnmp_package" >/dev/null; then
		echo "$wlnmp_package package is already installed."

		# Check if wlnmp-release-centos.repo file exists
		if [ -e "$repo_file" ]; then
			echo "$repo_file exists. Skipping installation."
			return
		else
			echo "$repo_file does not exist. Uninstalling $wlnmp_package."
			sudo rpm -e $wlnmp_package 2>/dev/null
		fi
	fi

	printf "Detected CentOS 7. Installing WLNMP CentOS 7 repository"

	# Simulate waiting with dots
	for i in {1..6}; do
		printf "."
		sleep 1
	done

	printf "\n"

	if sudo rpm -ivh "$repo_url"; then
		echo "WLNMP CentOS 7 repository installed successfully!"
	else
		display_error "Installation failed. Please check your network and retry."
	fi
}

# Function to install WLNMP repository based on CentOS 8 version
function install_wlnmp_centos_8_repository() {

	wlnmp_package="wlnmp-release-centos"
	repo_file="/etc/yum.repos.d/wlnmp-release-centos.repo"
	repo_url="https://mirrors.wlnmp.com/centos/wlnmp-release-centos.noarch.rpm"

	# Check if wlnmp-release-centos package is installed
	if rpm -q "$wlnmp_package" >/dev/null; then
		echo "$wlnmp_package package is already installed."

		# Check if wlnmp-release-centos.repo file exists
		if [ -e "$repo_file" ]; then
			echo "$repo_file exists. Skipping installation."
			return
		else
			echo "$repo_file does not exist. Uninstalling $wlnmp_package."
			sudo rpm -e $wlnmp_package 2>/dev/null
		fi
	fi

	printf "Detected CentOS 8. Installing WLNMP CentOS 8 repository"

	# Simulate waiting with dots
	for i in {1..6}; do
		printf "."
		sleep 1
	done

	printf "\n"

	if sudo rpm -ivh "$repo_url"; then
		echo "WLNMP CentOS 8 repository installed successfully!"
	else
		display_error "Installation failed. Please check your network and retry."
	fi
}

# Function to check OS and install the appropriate repository
function check_and_install_repository() {
	if [ -e "/etc/os-release" ]; then
		# Source the file to set variables
		. /etc/os-release

		# Extract major version number from VERSION_ID
		major_version=$(echo "$VERSION_ID" | cut -d'.' -f1)

		# Check if the ID variable contains OS
		case "$ID $major_version" in
		"anolis 8")
			install_wlnmp_Anolis_OS_8_repository
			;;
		"rocky 8")
			install_wlnmp_Rocky_Linux_8_repository
			;;
		"almalinux 8")
			install_wlnmp_AlmaLinux_OS_8_repository
			;;
		"almalinux 9")
			install_wlnmp_AlmaLinux_OS_9_repository
			;;
		"openEuler 20")
			if [ "$VERSION_ID" = "20.03" ]; then
				install_wlnmp_openEuler_OS_20_03_repository
			else
				echo "Current openEuler version is not supported. Please contact wlnmp.com for feedback."
			fi
			;;
		"openEuler 22")
			if [ "$VERSION_ID" = "22.03" ]; then
				install_wlnmp_openEuler_OS_22_03_repository
			else
				echo "Current openEuler version is not supported. Please contact wlnmp.com for feedback."
			fi
			;;
		"alinux 3")
			if [ "$VERSION_ID" = "3" ]; then
				install_wlnmp_Alibaba_Cloud_Linux_3_repository
			else
				echo "Current Alibaba Cloud Linux 3 version is not supported. Please contact wlnmp.com for feedback."
			fi
			;;
		"alinux 2")
			if [ "$VERSION_ID" = "2.1903" ]; then
				install_wlnmp_Alibaba_Cloud_Linux_2_repository
			else
				echo "Current Alibaba Cloud Linux 2 version is not supported. Please contact wlnmp.com for feedback."
			fi
			;;
		"opencloudos 8")
			install_wlnmp_opencloudos_8_repository
			;;
		"centos 6")
			install_wlnmp_centos_6_repository
			;;
		"centos 7")
			install_wlnmp_centos_7_repository
			;;
		"centos 8")
			install_wlnmp_centos_8_repository
			;;
		*)
			display_error "Unsupported or unrecognized OS. Cannot install WLNMP repository."
			;;
		esac
	else
		display_error "The /etc/os-release file does not exist. Cannot determine the operating system."
	fi
}

# Check and install the appropriate repository
check_and_install_repository
