class ReportsController < ApplicationController


  # GET /products
  def generate



    @products = Product.all

    spreadsheet_name = "test_spreadsheet"

    book = Spreadsheet::Workbook.new
    sheet1 = book.create_worksheet :name => spreadsheet_name
    sheet1.row(0).height = 18

    format = Spreadsheet::Format.new :color => :blue,
    :weight => :bold,
    :size => 18
    sheet1.row(0).default_format = format

    bold = Spreadsheet::Format.new :weight => :bold
    4.times do |x| sheet1.row(x + 1).set_format(0, bold) end


      sheet1.row(0).replace ['Item Code', 'Product Name', 'Product Type' ]




      @products.each_with_index  { |product, i|
        index = i + 1
        sheet1.row(index).replace [product.itemcode, product.productname, product.producttype.typename ]
      }

      export_file_path = [Rails.root, "public", "uploads", "exports", "reports_#{ DateTime.now.to_s }.xls"].join("/")
      book.write export_file_path

      filepath = [ "/uploads", "exports", "reports_#{ DateTime.now.to_s }.xls"].join("/")


render json: {file_path: filepath}, status: :created
    end



    def downloadfile
        file_path = "#{Rails.root}/public/uploads/exports/testfile.xls"
        data = open(file_path).read

        send_data data, :filename => 'testfile.xls', :type=>"application/vnd.ms-excel", :disposition => 'attachment' , :stream => false
      end

end
