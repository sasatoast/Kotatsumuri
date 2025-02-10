class UsersPlant < ApplicationRecord
  belongs_to :plant
  belongs_to :user, foreign_key: :firebase_uid, primary_key: :firebase_uid


  # 受け取ったuidに紐づくplantidを取得。
  def self.plant_ids_for(firebase_uid)
    where(firebase_uid: firebase_uid).pluck(:plant_id)
  end
end
