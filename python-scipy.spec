# Copyright 2024 Wong Hoi Sing Edison <hswong3i@pantarei-design.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

%global debug_package %{nil}

%global source_date_epoch_from_changelog 0

%global _lto_cflags %{?_lto_cflags} -ffat-lto-objects

Name: python-scipy
Epoch: 100
Version: 1.9.3
Release: 1%{?dist}
Summary: Scientific Library for Python
License: BSD-3-Clause
URL: https://github.com/scipy/scipy/tags
Source0: %{name}_%{version}.orig.tar.gz
Source99: %{name}.rpmlintrc
%if 0%{?fedora} >= 38
BuildRequires: flexiblas-devel
%else
BuildRequires: openblas-devel
%endif
BuildRequires: cmake
BuildRequires: fdupes
BuildRequires: gcc-gfortran
BuildRequires: lapack-devel
BuildRequires: meson
BuildRequires: ninja-build
BuildRequires: pkgconfig
BuildRequires: pybind11-devel >= 2.4.3
BuildRequires: python-rpm-macros
BuildRequires: python3-Cython0
BuildRequires: python3-decorator
BuildRequires: python3-devel
BuildRequires: python3-meson-python >= 0.9.0
BuildRequires: python3-numpy >= 1.18.5
BuildRequires: python3-numpy-f2py >= 1.18.5
BuildRequires: python3-pybind11 >= 2.4.3
BuildRequires: python3-pythran >= 0.9.12
BuildRequires: python3-setuptools
BuildRequires: python3-wheel
BuildRequires: suitesparse-devel

%description
SciPy (pronounced "Sigh Pie") is open-source software for mathematics,
science, and engineering. The SciPy library depends on NumPy, which
provides convenient and fast N-dimensional array manipulation. The SciPy
library is built to work with NumPy arrays, and provides many
user-friendly and efficient numerical routines such as routines for
numerical integration and optimization. Together, they run on all
popular operating systems, are quick to install, and are free of charge.
NumPy and SciPy are easy to use, but powerful enough to be depended upon
by some of the world’s leading scientists and engineers. If you need to
manipulate numbers on a computer and display or publish the results,
give SciPy a try!

%prep
%autosetup -T -c -n %{name}_%{version}-%{release}
tar -zx -f %{S:0} --strip-components=1 -C .

%build
%meson \
%if 0%{?fedora} >= 38
    -Dblas=flexiblas \
    -Dlapack=flexiblas
%endif
%meson_build

%install
%meson_install
find %{buildroot}%{python3_sitearch} -type f -name '*.pyc' -exec rm -rf {} \;
fdupes -qnrps %{buildroot}%{python3_sitearch}

%check

%if 0%{?suse_version} > 1500
%package -n python%{python3_version_nodots}-scipy
Summary: Scientific Library for Python
Requires: python3
Requires: python3-decorator
Requires: python3-numpy >= 1.18.5
Provides: python3-scipy = %{epoch}:%{version}-%{release}
Provides: python3dist(scipy) = %{epoch}:%{version}-%{release}
Provides: python%{python3_version}-scipy = %{epoch}:%{version}-%{release}
Provides: python%{python3_version}dist(scipy) = %{epoch}:%{version}-%{release}
Provides: python%{python3_version_nodots}-scipy = %{epoch}:%{version}-%{release}
Provides: python%{python3_version_nodots}dist(scipy) = %{epoch}:%{version}-%{release}

%description -n python%{python3_version_nodots}-scipy
SciPy (pronounced "Sigh Pie") is open-source software for mathematics,
science, and engineering. The SciPy library depends on NumPy, which
provides convenient and fast N-dimensional array manipulation. The SciPy
library is built to work with NumPy arrays, and provides many
user-friendly and efficient numerical routines such as routines for
numerical integration and optimization. Together, they run on all
popular operating systems, are quick to install, and are free of charge.
NumPy and SciPy are easy to use, but powerful enough to be depended upon
by some of the world’s leading scientists and engineers. If you need to
manipulate numbers on a computer and display or publish the results,
give SciPy a try!

%files -n python%{python3_version_nodots}-scipy
%license LICENSE.txt
%{python3_sitearch}/*
%endif

%if !(0%{?suse_version} > 1500)
%package -n python3-scipy
Summary: Scientific Library for Python
Requires: python3
Requires: python3-decorator
Requires: python3-numpy >= 1.18.5
Provides: python3-scipy = %{epoch}:%{version}-%{release}
Provides: python3dist(scipy) = %{epoch}:%{version}-%{release}
Provides: python%{python3_version}-scipy = %{epoch}:%{version}-%{release}
Provides: python%{python3_version}dist(scipy) = %{epoch}:%{version}-%{release}
Provides: python%{python3_version_nodots}-scipy = %{epoch}:%{version}-%{release}
Provides: python%{python3_version_nodots}dist(scipy) = %{epoch}:%{version}-%{release}

%description -n python3-scipy
SciPy (pronounced "Sigh Pie") is open-source software for mathematics,
science, and engineering. The SciPy library depends on NumPy, which
provides convenient and fast N-dimensional array manipulation. The SciPy
library is built to work with NumPy arrays, and provides many
user-friendly and efficient numerical routines such as routines for
numerical integration and optimization. Together, they run on all
popular operating systems, are quick to install, and are free of charge.
NumPy and SciPy are easy to use, but powerful enough to be depended upon
by some of the world’s leading scientists and engineers. If you need to
manipulate numbers on a computer and display or publish the results,
give SciPy a try!

%files -n python3-scipy
%license LICENSE.txt
%{python3_sitearch}/*
%endif

%changelog
