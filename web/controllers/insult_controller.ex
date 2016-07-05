defmodule ScottishInsultGenerator.InsultController do
  use ScottishInsultGenerator.Web, :controller

  def index(conn, _params) do
    adjs = ["toupéed", "bloviating", "weapons-grade", "weaselheaded",
            "ludicrous", "tangerine", "polyester", "incompressible",
            "tiny-fingered", "Cheeto-faced", "ferret-wearing", "witless",
            "fucking", "ignorant", "stupid", "sentient", "arse-bitten",
            "utter", "absolute", "soggy", "expired", "wallaper", "repugnant",
            "boggin", "havering", "incorrigible", "uneducated", "ill-informed",
            "pure", "fucking", "bumbling", "inglorious", "tumescent",
            "turnip-faced", "merkin-hatted", "hare-brained", "fucking",
            "self-serving", "orange-skinned", "bairn-scaring", "Tango-faced",
            "hoofwanking", "mangled", "apricot", "knobgobbing", "orange",
            "rusty", "underwater", "goofy-hatted"]

    nouns = ["buttplug face", "ninny", "neap", "weasel", "fucktrumpet",
             "fleshbag", "plum", "fucknugget", "ballbag", "cockwomble",
             "jizztrumpet", "shitgibbon", "cocksplat", "fuckmuppet",
             "enema", "fool", "doughnut", "dogfood coupon", "fud",
             "nincompoop", "dolt", "idiot", "eedjit", "tattie", "tit",
             "muppet", "bastard", "delinquent", "numpty", "creep",
             "spoon", "gobshite", "doughball", "punchinello wag",
             "bumcork", "ballsack", "helmet", "melon", "nutsack",
             "wankstain", "thundercunt", "hellbeast", "twatcruncher",
             "numbskull", "moron", "lungnut", "hot-air balloon",
             "fuckmint", "basket weaver", "imbecile", "ignoramus", "septum"]

    insult = "#{Enum.take_random(adjs, 2) |> Enum.join(" ")} #{Enum.random(nouns)}"
    path   = "images/trump#{Enum.to_list(1..17) |> Enum.random}.jpg"

    render conn, "index.html", insult: insult, image_path: path
  end
end
