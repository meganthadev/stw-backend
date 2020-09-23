class Api::V1::JournalEntriesController < ApplicationController

    before_action :set_product

        def index 
            @journal_entries = @product.journal_entries 
            render json: @journal_entries
        end 

        def create
            @journal_entry = @product.journal_entries.new(journal_entry_params)
            if @journal_entry.save 
                render json: @product 
            else  
                render json: {error: 'Error, Could Not Save Entry'}
            end 
        end 

        def show 
            @journal_entry = JournalEntry.find(params[:id])
            render json: @journal_entry
        end 

        def update 
            @journal_entry = JournalEntry.find(params[:id])
            render json: @journal_entry
        end 

        def destroy
            @journal_entry = JournalEntry.find(params[:id])
            @product = Product.find(@journal_entry.product_id)
            @journal_entry.destroy
            render json: @product
        end 


     private 

        def journal_entry_params 
            params.require(:journal_entry).permit(:product_id, :entry, :entry_date, :entry_type)
        end  

        def set_product
            @product = Product.find(params[:product_id])
        end 

end
