class FileType < String
  def initialize(str)
    if str.nil? || !Pathname.new(str).exist?
      raise "#{str} isn't a valid file path. Please provide a valid file path"
    end

    super(FileMagic.new(FileMagic::MAGIC_MIME).file(str))
  end
end
