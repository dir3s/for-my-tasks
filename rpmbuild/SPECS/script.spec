Name:           countfiles
Version:        1.0
Release:        1
Summary:        Script to count regular files in /etc
License:        MIT
BuildArch:      noarch
Source0:        script.sh

%description
A simple bash script that counts regular files in /etc (excluding symlinks
and directories).

%prep

%build

%install
mkdir -p %{buildroot}/usr/local/bin
install -m 0755 %{SOURCE0} %{buildroot}/usr/local/bin/countfiles

%files
/usr/local/bin/countfiles

%changelog
* Thu Nov 20 2025 Max Batiuk <maksbatiuk13@gmail.com> - 1.0-1
- Initial release
