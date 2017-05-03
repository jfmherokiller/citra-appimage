FROM ubuntu:14.04
ADD Recipe.deps /Recipe.deps
RUN bash -ex Recipe.deps
ENV CC="clang-3.9 -stdlib=libc++" CXX="clang++-3.9 -stdlib=libc++"
ADD BuildCode /BuildCode
RUN bash -ex BuildCode
ADD Recipe /Recipe
RUN bash -ex Recipe
