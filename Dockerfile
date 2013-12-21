# Copyright 2013 Rackspace, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM jayofdoom/docker-ubuntu-14.04
MAINTAINER jim.rollenhagen@rackspace.com

RUN apt-get update
RUN apt-get install -y pypy
RUN apt-get install -y curl

# get pip running
RUN curl --silent -O http://python-distribute.org/distribute_setup.py
RUN pypy distribute_setup.py
RUN rm distribute_setup.py
RUN curl --silent -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
RUN pypy get-pip.py
RUN rm get-pip.py
