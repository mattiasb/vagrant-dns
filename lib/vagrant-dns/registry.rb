module VagrantDNS
  # This is the dns pattern registry (aka "config")
  # It basically delegates everything to a YAML::Store but handles the conversion
  # of Regexp dns-patterns into YAML string keys and reverse.
  class Registry
    include VagrantDNS::Store

    def initialize(tmp_path)
      @store = YAML::Store.new(File.join(tmp_path, "config"), true)
    end
  end
end
