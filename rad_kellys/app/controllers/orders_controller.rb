class OrdersController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:webhook]

    def new
      @book = Book.find(params[:book_id])
      @session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: @book.title,
          description: "By #{@book.author.name}",
          amount: (@book.price * 100).to_i,
          currency: 'aud',
          quantity: 1
        }],
        payment_intent_data: {
          metadata: {
            user_id: current_user.id,
            book_id: @book.id
          }
        },
        success_url: "#{root_url}orders/complete",
        cancel_url: "#{root_url}",
      )
    end
  
    def complete
    end
  
    def webhook
      payment_id = params[:data][:object][:payment_intent]
      payment = Stripe::PaymentIntent.retrieve(payment_id)
      
      book_id = payment.metadata.book_id
      user_id = payment.metadata.user_id
      
      p "book id #{book_id}"
      p "user id #{user_id}"
      
      render plain: "Success"
    end

    def receipt
        @item = Item.find(params[:id])
    
        # this is for the user menu
        @user = current_user
      end

end
