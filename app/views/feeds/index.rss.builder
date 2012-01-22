xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Articles"
    xml.description "Lots of articles"
    xml.link podcasts_path(:rss)
    
    for podcast in @podcasts
      xml.item do
        xml.title podcast.title
        xml.description podcast.description
        xml.pubdate podcast.pubdate
        xml.link podcasts_path(podcast, :format => :rss)
        xml.guid podcasts_path(podcast, :format => :rss)
      end
    end
  end
end