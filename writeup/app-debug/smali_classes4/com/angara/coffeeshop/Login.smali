.class public Lcom/angara/coffeeshop/Login;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Login.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/angara/coffeeshop/Login$AsyncRequest;
    }
.end annotation


# instance fields
.field Login:Landroid/widget/TextView;

.field Password:Landroid/widget/TextView;

.field jwt:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 27
    const-string v0, "http://192.168.5.124:5000/api"

    iput-object v0, p0, Lcom/angara/coffeeshop/Login;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public GoToProfile()V
    .locals 3

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/angara/coffeeshop/Profile;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    new-array v1, v1, [I

    .line 97
    .local v1, "kurza":[I
    const-string v2, "kurza"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/Login;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public SendRequest(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 91
    new-instance v0, Lcom/angara/coffeeshop/Login$AsyncRequest;

    invoke-direct {v0, p0}, Lcom/angara/coffeeshop/Login$AsyncRequest;-><init>(Lcom/angara/coffeeshop/Login;)V

    const-string v1, "/base_login"

    const-string v2, "password=banana"

    const-string v3, "123"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/angara/coffeeshop/Login$AsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/Login;->setContentView(I)V

    .line 36
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/angara/coffeeshop/Login;->Login:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/angara/coffeeshop/Login;->Password:Landroid/widget/TextView;

    .line 38
    return-void
.end method
