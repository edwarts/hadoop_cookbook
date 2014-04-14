# Minimal configuration: http://zookeeper.apache.org/doc/r3.4.5/zookeeperStarted.html#sc_InstallingSingleMode
default['zookeeper']['zoocfg']['clientPort'] = '2181'
default['zookeeper']['zoocfg']['dataDir'] = '/var/lib/zookeeper'

# default log4j configuration parameters from the distribution - note that some of these are overridden in /usr/bin/zookeeper-server
default['zookeeper']['log4j']['zookeeper.root.logger'] = 'INFO, CONSOLE'
default['zookeeper']['log4j']['zookeeper.console.threshold'] = 'INFO'
default['zookeeper']['log4j']['zookeeper.log.dir'] = '.'
default['zookeeper']['log4j']['zookeeper.log.file'] = 'zookeeper.log'
default['zookeeper']['log4j']['zookeeper.log.threshold'] = 'DEBUG'
default['zookeeper']['log4j']['zookeeper.tracelog.dir'] = '.'
default['zookeeper']['log4j']['zookeeper.tracelog.file'] = 'zookeeper_trace.log'
default['zookeeper']['log4j']['log4j.rootLogger'] = '${zookeeper.root.logger}'
default['zookeeper']['log4j']['log4j.appender.CONSOLE'] = 'org.apache.log4j.ConsoleAppender'
default['zookeeper']['log4j']['log4j.appender.CONSOLE.Threshold'] = '${zookeeper.console.threshold}'
default['zookeeper']['log4j']['log4j.appender.CONSOLE.layout'] = 'org.apache.log4j.PatternLayout'
default['zookeeper']['log4j']['log4j.appender.CONSOLE.layout.ConversionPattern'] = '%d{ISO8601} [myid:%X{myid}] - %-5p [%t:%C{1}@%L] - %m%n'
default['zookeeper']['log4j']['log4j.appender.ROLLINGFILE'] = 'org.apache.log4j.RollingFileAppender'
default['zookeeper']['log4j']['log4j.appender.ROLLINGFILE.Threshold'] = '${zookeeper.log.threshold}'
default['zookeeper']['log4j']['log4j.appender.ROLLINGFILE.File'] = '${zookeeper.log.dir}/${zookeeper.log.file}'
default['zookeeper']['log4j']['log4j.appender.ROLLINGFILE.MaxFileSize'] = '10MB'
default['zookeeper']['log4j']['#log4j.appender.ROLLINGFILE.MaxBackupIndex'] = '10'
default['zookeeper']['log4j']['log4j.appender.ROLLINGFILE.layout'] = 'org.apache.log4j.PatternLayout'
default['zookeeper']['log4j']['log4j.appender.ROLLINGFILE.layout.ConversionPattern'] = '%d{ISO8601} [myid:%X{myid}] - %-5p [%t:%C{1}@%L] - %m%n'
default['zookeeper']['log4j']['log4j.appender.TRACEFILE'] = 'org.apache.log4j.FileAppender'
default['zookeeper']['log4j']['log4j.appender.TRACEFILE.Threshold'] = 'TRACE'
default['zookeeper']['log4j']['log4j.appender.TRACEFILE.File'] = '${zookeeper.tracelog.dir}/${zookeeper.tracelog.file}'
default['zookeeper']['log4j']['log4j.appender.TRACEFILE.layout'] = 'org.apache.log4j.PatternLayout'
default['zookeeper']['log4j']['log4j.appender.TRACEFILE.layout.ConversionPattern'] = '%d{ISO8601} [myid:%X{myid}] - %-5p [%t:%C{1}@%L][%x] - %m%n'
