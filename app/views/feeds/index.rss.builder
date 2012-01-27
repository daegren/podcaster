xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0", "xmlns:itunes" => "http://www.itunes.com/dtds/podcast-1.0.dtd" do
  xml.channel do
    xml.title "Articles"
    xml.description "Lots of articles"
    xml.link podcasts_path(:rss)
    xml.itunes :subtitle, "Some stuff"
    
    for podcast in @podcasts
      xml.item do
        xml.title podcast.title
        xml.description podcast.description
        xml.pubdate podcast.pubdate
        xml.link podcast.fileLoc
        xml.guid podcast.id
      end
    end
  end

end