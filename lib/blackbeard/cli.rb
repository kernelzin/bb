module BB
  class CLI


    def self.run! args
      path = args.first
      f = YAML.load_file(path)
      
      Core.run! 
      # ler arquivo
      # rodar daemon
      # ser feliz

    end



  end
end
