# Asessment 1

## Theorie Bash

1. commandline arguments

    > myscript.sh

    ```bash
    #!/bin/bash
    echo $2
    ```

    Obiges Skript wird aufgerufen mit `./myscript.sh dwarven fortress`.
    Was ist der output auf dem Terminal?

    A fortress
    B dwarven
    C ./myscript.sh
    D foo

2. pipes

    > myscript.sh

    ```bash
    #!/bin/bash
    echo rimtar
    echo the 
    echo mining
    echo kobold
    ```

    Obiges Skript wird aufgerufen mit `./myscript.sh | grep m`.
    Was ist der output auf dem Terminal?

    A rimtar
      mining
    B rimtar
      kobold
    C the
      mining
    D mining
      kobold

3. return value  

    Was ist der output von dem aufruf auf dem Terminal `true; echo $?`.

    A 0
    B 1
    C true
    D false

4. redirect

    > myscript.sh

    ```bash
    #!/bin/bash
    echo rimtar > file.log
    echo the >> file.log
    echo mining > file.log
    echo kobold >> file.log
    cat file.log
    ```

    Obiges Skript wird aufgerufen mit `./myscript.sh`.
    Was ist der output auf dem Terminal?

    A mining
      kobold
    B rimtar
      mining
    C rimtar
      kobold
    D the
      mining

5. linked execution

    Was ist der output von dem aufruf auf dem Terminal `false || echo failing`.

    A failing
    B 0
    C 1
    D false

6. shift

    ```bash
    #!/bin/bash
    shift
    shift
    echo $@
    ```

    Obiges Skript wird aufgerufen mit `./myscript.sh rimtar the mining kobold`.
    Was ist der output auf dem Terminal?

    A mining kobold
    B the mining kobold
    C rimtar the mining kobold
    D ./myscript.sh rimtar the mining kobold

7. arguments with spaces

    ```bash
    #!/bin/bash
    echo $1
    ```

    Obiges Skript wird aufgerufen mit `./myscript.sh "rimtar the" mining kobold`.
    Was ist der output auf dem Terminal?

    A rimtar the
    B ./myscript.sh
    C mining
    D kobold

## Theorie Git

1. merge

    Folgende commits existieren und der aktuelle Branch ist "master".

    ```text
          A---B---C topic
         /
    D---E---F---G master
    ```

    Was ist das Ergebnis von `git merge topic`?

    A

    ```text
          A---B---C topic
         /         \
    D---E---F---G---H master
    ```

    B

    ```text
          A---B---C---H topic
         /       /  
    D---E---F---G  master
    ```

    C

    ```text
    D---E---F---G---H  master
    ```

    D

    ```text
                      A---B---C topic
                     /
    D---E---F---G---H master
    ```

2. treeish

    Meine Datei `file.data` hat 49 MB und ist im git repo.
    Ich benenne die Datei um auf `file.bak` und comitte ins repo.
    Wie viel speicher braucht mein repo mehr als vorher?

    A Wenige Byte bis Kilobyte
    B Weniger Speicher als vor dem Aufräumen
    C Knapp unter 50 MB
    D Je 50 MB für die alte und neue Datei, Knapp unter 100 MB

3. commit

    git status zeigt an:

    ```text
        On branch master
        Your branch is ahead of 'origin/master' by 1 commit.
        (use "git push" to publish your local commits)

        Untracked files:
        (use "git add <file>..." to include in what will be committed)
                test.sh
                data.log

        nothing added to commit but untracked files present (use "git add" to track)
    ```

    Folgende befehle werden ausgeführt

    ```bash
    git add test.sh
    git commit -m "like a pro"
    ```

    Was beschreibt den Vorgang am besten?

    A von zwei erstellten Dateien wurde eine Teil des nächsten Commits.
    B zwei Dateien wurden ins repo geschoben
    C zwei Dateien wurden modifiziert
    D die Datei data.log wurde gelöscht

## Theorie java

1. integer narrowing

    ```java
    int a = 3.99;
    ```

    Welcher Wert ist in `a` gespeichert?

    A 3
    B 4
    C 3.99
    D 3.14

2. operator / on int

    ```java
    int b = 4;
    int c = 3;
    int a = b / c;
    ```

    Welcher Wert ist in `a` gespeichert?

    A 1
    B 0.75
    C 2
    D 4

3. operator / on double

    ```java
    double b = 4;
    double c = 3;
    double a = c / b;
    ```

    Welcher Wert ist in `a` gespeichert?

    A 0.75
    B 1
    C 2
    D 4

4. operator %

    ```java
    int b = 14;
    int c = 4;
    int a = b % c;
    ```

    Welcher Wert ist in `a` gespeichert?

    A 2
    B 3
    C 3.5
    D 18

5. operator prescedence

    ```java
    int a = 3 + 2 * 2;
    ```

    Welcher Wert ist in `a` gespeichert?

    A 7
    B 10
    C 12
    D 14

6. array

    ```java
    int[] arr = {10, 20, 30, 40};
    int a = arr[2];
    ```

    Welcher Wert ist in `a` gespeichert?

    A 30
    B 10
    C 20
    D 40

## Theorie docker

1. Docker Image

    Was ist ein docker Image

    A Ein Docker Image ist die Grundlage zum ausführen von docker Containern.
    B Ein Docker Image ist ein Container der grundlegend dockert.
    C Ein Docker Image ist eine ausgeführet Kopie eines docker Volumes.
    D Ein Docker Image ist die versionierte Kopie des docker Desktops.

2. environment in docker

    Was ist der output folgender aufrufe:

    ```bash
    docker run -it --rm -e FOO=bar ubuntu              
    root@cc162d79562d:/# echo xx $FOO xx
    ```

    A xx bar xx
    B xx xx
    C xx $FOO xx
    D xx FOO=bar xx

3. docker deamon

    Was ist der docker deamon?

    A Der Docker-Daemon läuft im Hintergrund auf dem Hostsystem und dient der zentralen Steuerung der Docker-Engine.
    B Das Kommandozeilen Werkzeug um container zu starten.
    C Die Internet registry mit images.
    D Die Kubernetes Variante von Docker.

4. docker hub

    Was ist der docker hub?

    A Docker Hub ist ein Onlinedienst, der eine Registry für Docker-Images und Repositories beinhaltet.
    B Die API um mit der docker Engine zu interagieren.
    C Die Docker community auf github.
    D Ein docker hub ergibt sich wenn sich sternförmig docker container um ein image anordnen.

5. acr

    Was ist eine azure container registry?

    A Eine Registry für Images auf der Azure Cloud (azurecr) analog zum docker Hub
    B Die Sammling an Images des azure Teams auf github
    C Zur Mittagszeit geht der Docker Hub in den azure zustand über.
    D Ein farbcode als Indikator für Health. Azure bedeutet störungsfrei.

6. volume mount

    Der Container aus dem Image `dwarf` speichert in Verzeichnis `/foo` daten.
    Welches kommando persistiert die Daten auch wenn der container entfernt wird.

    A `docker run -d -v dv:/foo dwarf`
    B `docker run -d dwarf tail -f /dev/null`
    C `docker run -e persist=foo dwarf`
    D `docker run --rm -it dwarf`

7. docker rm

    Was macht der Befehl `docker rm -f $(docker ps -aq)`

    A Er findet alle ids von allen containern (nicht nur laufende) und entfernt diese mit force
    B Er findet nur ids von laufenden containern und entfernt diese mit frage
    C Er findet alle images die nicht mehr grbraucht werden und entfernt diese mit force
    D Er findet alle docker resourcen die nicht aktiv sind und entfernt diese mit frage

8. dockerfile

    Wie ist die namenskonvention für ein Dockerfile.

    A Dockerfile
    B dockerfile
    C DockerFile
    D docker-file

9. dockerfile build

    ```Dockerfile
    FROM ubuntu
    WORKDIR /app
    RUN echo output > file.log
    CMD ["cat", "file.log"]
    ```

    Wenn obiges Dockerfile gebaut und trivial ausgeführt wird - was kommt dem output am nächsten

    A output
    B [Error] ubuntu image is missing a tag
    C file.log
    D cat output > file.log

10. network-alias

    ```bash
    docker run --rm -d --network supernet --network-alias pike  ubuntu tail -f /dev/null
    docker run --rm -it --network supernet registry.k8s.io/e2e-test-images/jessie-dnsutils:1.3
    nslookup pike #executed in the jessie-dnsutils terminal
    ```

    Was kommt dem output am nächsten:

    A

    ```text
    root@101aa4e66a77:/# nslookup pike
    Server:         127.0.0.11
    Address:        127.0.0.11#53

    Non-authoritative answer:
    Name:   pike
    Address: 172.18.0.2
    ```

    B

    ```text
    root@96dc289b3255:/# nslookup pike
    Server:         127.0.0.11
    Address:        127.0.0.11#53

    ** server can't find pike: SERVFAIL
    ```

    C

    ```text
    root@3c0b62e1db87:/# nslookup pike
    bash: nslookup: command not found
    ```

    D

    ```text
    root@3c0b62e1db87:/# nslookup pike
    The environment is ubuntu
    ```

11. docker container analysis

    Das image `ubuntu:jammy-20221130` enthält eine Versionskennung in dem file `/etc/issue`

    Lies die version aus uns schreibe diese in die textbox. Hinweis: bitte darauf achten vorne und hinten keine Leerzeichen kopieren.

    Ergebnis: `Ubuntu 22.04.1 LTS \n \l`
