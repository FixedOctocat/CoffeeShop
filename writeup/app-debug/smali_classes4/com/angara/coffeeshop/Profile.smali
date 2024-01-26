.class public Lcom/angara/coffeeshop/Profile;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/angara/coffeeshop/Profile$AsyncRequest;
    }
.end annotation


# instance fields
.field history_col:Landroid/widget/TextView;

.field jwt:Ljava/lang/String;

.field public kurza:[I

.field login_msg:Landroid/widget/TextView;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 30
    const-string v0, "http://192.168.5.124:5000/api"

    iput-object v0, p0, Lcom/angara/coffeeshop/Profile;->url:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/angara/coffeeshop/Profile;->kurza:[I

    return-void
.end method


# virtual methods
.method public GoToBuy(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/angara/coffeeshop/ShopBuy;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "kurza"

    iget-object v2, p0, Lcom/angara/coffeeshop/Profile;->kurza:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/Profile;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method public GoToCoffee(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/angara/coffeeshop/ShopMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "kurza"

    iget-object v2, p0, Lcom/angara/coffeeshop/Profile;->kurza:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/Profile;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method public GoToLogin()V
    .locals 2

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/angara/coffeeshop/Login;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/Profile;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method public Refresh(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 77
    new-instance v0, Lcom/angara/coffeeshop/Profile$AsyncRequest;

    invoke-direct {v0, p0}, Lcom/angara/coffeeshop/Profile$AsyncRequest;-><init>(Lcom/angara/coffeeshop/Profile;)V

    const-string v1, "/mobile"

    const-string v2, "key=angara"

    const-string v3, "322"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/angara/coffeeshop/Profile$AsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-virtual {p0}, Lcom/angara/coffeeshop/Profile;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "kurza"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/angara/coffeeshop/Profile;->kurza:[I

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v1, 0x7f0b001e

    invoke-virtual {p0, v1}, Lcom/angara/coffeeshop/Profile;->setContentView(I)V

    .line 42
    const v1, 0x7f0800ea

    invoke-virtual {p0, v1}, Lcom/angara/coffeeshop/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/angara/coffeeshop/Profile;->login_msg:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f0801c0

    invoke-virtual {p0, v1}, Lcom/angara/coffeeshop/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/angara/coffeeshop/Profile;->history_col:Landroid/widget/TextView;

    .line 45
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.angara.coffeeshop/shared_prefs/jwt_data.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/angara/coffeeshop/Profile;->GoToLogin()V

    goto :goto_0

    .line 50
    :cond_0
    const-string v2, "jwt_data"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/angara/coffeeshop/Profile;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 52
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v4, "jwt"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/angara/coffeeshop/Profile;->jwt:Ljava/lang/String;

    .line 53
    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "chunks":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    move-result-object v5

    .line 55
    .local v5, "decoder":Ljava/util/Base64$Decoder;
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v8, v4, v7

    invoke-virtual {v5, v8}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    .line 59
    .local v6, "payload":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    .local v8, "json":Lorg/json/JSONObject;
    nop

    .line 65
    :try_start_1
    iget-object v9, p0, Lcom/angara/coffeeshop/Profile;->login_msg:Landroid/widget/TextView;

    const-string v10, "\u0417\u0434\u0440\u0430\u0432\u0441\u0442\u0432\u0443\u0439\u0442\u0435, %s!"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v11, "username"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v3

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    nop

    .line 70
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "chunks":[Ljava/lang/String;
    .end local v5    # "decoder":Ljava/util/Base64$Decoder;
    .end local v6    # "payload":Ljava/lang/String;
    .end local v8    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 66
    .restart local v2    # "sp":Landroid/content/SharedPreferences;
    .restart local v4    # "chunks":[Ljava/lang/String;
    .restart local v5    # "decoder":Ljava/util/Base64$Decoder;
    .restart local v6    # "payload":Ljava/lang/String;
    .restart local v8    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 67
    .local v3, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 60
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v8    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 61
    .restart local v3    # "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
