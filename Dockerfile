FROM ubuntu:14.04
ADD Recipe.deps /Recipe.deps
RUN bash -ex Recipe.deps
ADD BuildCode /BuildCode
RUN bash -ex BuildCode
ADD Recipe /Recipe
RUN bash -ex Recipe
