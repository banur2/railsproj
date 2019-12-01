# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all

Product.create(:title => 'Test 1', 
                :desc => 'Test 1 Desc',
                :image_url => '/images/Test1.jpg',
                :price =>5.0            
                )

Product.create(:title => 'Test 2', 
                :desc => 'Test 2 Desc',
                :image_url => '/images/Test2.jpg',
                :price =>10.0            
                )
Product.create(:title => 'Test 3', 
                :desc => 'Test 3 Desc',
                :image_url => '/images/Test3.jpg',
                :price =>15.0            
                )