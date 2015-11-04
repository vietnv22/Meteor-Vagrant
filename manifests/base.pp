$node_version = "v0.10.40"

file { '/etc/motd':
	content => "
      .-----.
    .' -   - '.       Meteor-Vagrant 0.1
   /  .-. .-.  \\
   |  | | | |  |
    \\ \\o/ \\o/ /       - OS:      Ubuntu trusty-server-cloudimg-amd64
   _/    ^    \\_	 - Node:    ${node_version}
  | \\  '---'  / |       - IP:      192.168.33.10
  / /`--. .--`\\ \\      - Code:    ~/code/Meteors
 / /'---` `---'\\ \\
 '.__.       .__.'
     `|     |`
      |     \\
      \\      '--.
       '.        `\\
         `'---.   |
            ,__) /
             `..'
\n"
}

# Make all the magic happen by instantiating the meteor class
class { meteor:
	node_version => $node_version
}

