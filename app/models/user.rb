class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books,dependent: :destroy
  validates :introduction, length: {maximum: 50}
  validates :name, presence: true

  attachment :profile_image



  after_create :send_welcome_mail  #after_create コールバックを使うことで、
  				# =>Userが新規作成された後にメールを送信するためのメソッドを呼び出すことができ

  def send_welcome_mail
    ThanksMailer.user_welcome_mail(self).deliver_later
  end

end


