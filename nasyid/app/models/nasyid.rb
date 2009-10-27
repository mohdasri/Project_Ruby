class Nasyid < ActiveRecord::Base
	validates_presence_of :Judul
	validates_presence_of :Artis
	validates_presence_of :Album
	validates_presence_of :Email
	validates_presence_of :Lirik
end
