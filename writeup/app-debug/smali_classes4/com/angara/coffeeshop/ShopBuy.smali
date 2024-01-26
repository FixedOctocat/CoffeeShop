.class public Lcom/angara/coffeeshop/ShopBuy;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ShopBuy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;,
        Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;
    }
.end annotation


# instance fields
.field buy_kurza:Landroid/widget/TextView;

.field buy_price:Landroid/widget/TextView;

.field public jwt:Ljava/lang/String;

.field public kurza:[I

.field public price:[Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/angara/coffeeshop/ShopBuy;->kurza:[I

    .line 33
    const-string v1, "http://192.168.5.124:5000/api"

    iput-object v1, p0, Lcom/angara/coffeeshop/ShopBuy;->url:Ljava/lang/String;

    .line 35
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/angara/coffeeshop/ShopBuy;->price:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public BuyCoffee(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 125
    new-instance v0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;

    invoke-direct {v0, p0}, Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;-><init>(Lcom/angara/coffeeshop/ShopBuy;)V

    const-string v1, "/check"

    const-string v2, "new=no"

    const-string v3, "0cc175b9c0f1b6a831c399e269772661"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    return-void
.end method

.method public ClearKurza(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 166
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/angara/coffeeshop/ShopBuy;->kurza:[I

    .line 167
    iget-object v0, p0, Lcom/angara/coffeeshop/ShopBuy;->buy_kurza:Landroid/widget/TextView;

    const-string v1, "\u0412\u0441\u0435\u0433\u043e: "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/angara/coffeeshop/ShopBuy;->buy_price:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method public GoToCoffee(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/angara/coffeeshop/ShopMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "kurza"

    iget-object v2, p0, Lcom/angara/coffeeshop/ShopBuy;->kurza:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/ShopBuy;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method public GoToLogin()V
    .locals 2

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/angara/coffeeshop/Login;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/ShopBuy;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public GoToProfile(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/angara/coffeeshop/Profile;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "kurza"

    iget-object v2, p0, Lcom/angara/coffeeshop/ShopBuy;->kurza:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/ShopBuy;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/ShopBuy;->setContentView(I)V

    .line 43
    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/ShopBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/angara/coffeeshop/ShopBuy;->buy_kurza:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f080078

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/ShopBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/angara/coffeeshop/ShopBuy;->buy_price:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p0}, Lcom/angara/coffeeshop/ShopBuy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "kurza"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/angara/coffeeshop/ShopBuy;->kurza:[I

    .line 49
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.angara.coffeeshop/shared_prefs/jwt_data.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/angara/coffeeshop/ShopBuy;->GoToLogin()V

    goto :goto_0

    .line 54
    :cond_0
    const-string v2, "jwt_data"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/angara/coffeeshop/ShopBuy;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 56
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "jwt"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/angara/coffeeshop/ShopBuy;->jwt:Ljava/lang/String;

    .line 57
    new-instance v3, Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;

    invoke-direct {v3, p0}, Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;-><init>(Lcom/angara/coffeeshop/ShopBuy;)V

    const-string v4, "/get_check"

    const-string v5, "new=yes"

    const-string v6, "92eb5ffee6ae2fec3ad71c777531578f"

    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return-void
.end method
