windows_package node['name']['JDK1.7']  do
    source                  node['source']['JDK1.7']
    bin_cmds ["java", "javac"]
    action                  :install
    installer_type          :custom
    options     "/s INSTALLDIR=\"#{node['path']['JDK1.8'].gsub('/','\\')}\""
end
