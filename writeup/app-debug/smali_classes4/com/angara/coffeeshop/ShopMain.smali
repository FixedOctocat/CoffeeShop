.class public Lcom/angara/coffeeshop/ShopMain;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ShopMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;,
        Lcom/angara/coffeeshop/ShopMain$SetTextTask;,
        Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;
    }
.end annotation


# instance fields
.field json:Lorg/json/JSONObject;

.field public kurza:[I

.field private latitude:D

.field private longitude:D

.field final url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/angara/coffeeshop/ShopMain;->json:Lorg/json/JSONObject;

    .line 36
    const-string v0, "http://192.168.5.124:5000/api"

    iput-object v0, p0, Lcom/angara/coffeeshop/ShopMain;->url:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/angara/coffeeshop/ShopMain;->kurza:[I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/angara/coffeeshop/ShopMain;->longitude:D

    .line 40
    iput-wide v0, p0, Lcom/angara/coffeeshop/ShopMain;->latitude:D

    return-void
.end method


# virtual methods
.method public AddCoffee(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 212
    .local v0, "btn":Landroid/widget/ImageView;
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    .local v1, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/angara/coffeeshop/ShopMain;->json:Lorg/json/JSONObject;

    const-string v4, "items"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/angara/coffeeshop/ShopMain;->json:Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "price"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c %s \u0437\u0430 %s\u20bd"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 214
    invoke-virtual {v1, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 216
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda0;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/ImageView;)V

    const-string v3, "\u041d\u0435\u0442"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 225
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda1;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/ImageView;)V

    const-string v3, "\u0414\u0430"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 238
    .local v2, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 239
    return-void
.end method

.method public GoToBuy(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/angara/coffeeshop/ShopBuy;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "kurza"

    iget-object v2, p0, Lcom/angara/coffeeshop/ShopMain;->kurza:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/ShopMain;->startActivity(Landroid/content/Intent;)V

    .line 251
    return-void
.end method

.method public GoToProfile(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/angara/coffeeshop/Profile;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "kurza"

    iget-object v2, p0, Lcom/angara/coffeeshop/ShopMain;->kurza:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/ShopMain;->startActivity(Landroid/content/Intent;)V

    .line 245
    return-void
.end method

.method synthetic lambda$AddCoffee$2$com-angara-coffeeshop-ShopMain(Landroid/widget/ImageView;Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "btn"    # Landroid/widget/ImageView;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 218
    :try_start_0
    const-string v0, "%s \u043d\u0435 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/angara/coffeeshop/ShopMain;->json:Lorg/json/JSONObject;

    const-string v4, "items"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    nop

    .line 222
    invoke-interface {p2}, Landroid/content/DialogInterface;->cancel()V

    .line 223
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic lambda$AddCoffee$3$com-angara-coffeeshop-ShopMain(Landroid/widget/ImageView;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "btn"    # Landroid/widget/ImageView;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 226
    iget-object v0, p0, Lcom/angara/coffeeshop/ShopMain;->kurza:[I

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 227
    .local v0, "kurza_new":[I
    iget-object v1, p0, Lcom/angara/coffeeshop/ShopMain;->kurza:[I

    array-length v1, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v2

    aput v3, v0, v1

    .line 228
    iput-object v0, p0, Lcom/angara/coffeeshop/ShopMain;->kurza:[I

    .line 231
    :try_start_0
    const-string v1, "%s \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/angara/coffeeshop/ShopMain;->json:Lorg/json/JSONObject;

    const-string v5, "items"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    nop

    .line 235
    return-void

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method synthetic lambda$onCreate$0$com-angara-coffeeshop-ShopMain(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/angara/coffeeshop/ShopMain;->longitude:D

    .line 55
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/angara/coffeeshop/ShopMain;->latitude:D

    .line 57
    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$1$com-angara-coffeeshop-ShopMain(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 69
    invoke-virtual {p0}, Lcom/angara/coffeeshop/ShopMain;->finish()V

    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/app/Activity;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    .line 47
    .local v0, "fusedLocationClient":Lcom/google/android/gms/location/FusedLocationProviderClient;
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe1

    invoke-static {p0, v1, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 49
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 51
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda2;-><init>(Lcom/angara/coffeeshop/ShopMain;)V

    .line 52
    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 59
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v1, 0x7f0b0020

    invoke-virtual {p0, v1}, Lcom/angara/coffeeshop/ShopMain;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/angara/coffeeshop/ShopMain;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 62
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "kurza"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/angara/coffeeshop/ShopMain;->kurza:[I

    .line 64
    iget-wide v2, p0, Lcom/angara/coffeeshop/ShopMain;->longitude:D

    const-wide v4, 0x404a177ec42b3d9bL    # 52.1835561

    cmpl-double v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget-wide v5, p0, Lcom/angara/coffeeshop/ShopMain;->latitude:D

    const-wide v7, 0x40052036361cf27fL    # 2.6407284

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    .line 65
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    .local v2, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    const-string v3, "U bent niet in Nederland"

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 68
    new-instance v3, Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda3;-><init>(Lcom/angara/coffeeshop/ShopMain;)V

    const-string v4, "Sorry"

    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    .line 74
    .local v3, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 75
    .end local v2    # "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v3    # "alertDialog":Landroidx/appcompat/app/AlertDialog;
    goto/16 :goto_2

    .line 76
    :cond_3
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;

    invoke-direct {v2, p0}, Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;-><init>(Lcom/angara/coffeeshop/ShopMain;)V

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;

    const v5, 0x7f0800f8

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/ImageView;)V

    new-array v5, v3, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$SetTextTask;

    const v5, 0x7f0801ed

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/TextView;)V

    new-array v5, v3, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;

    const v5, 0x7f0800f9

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/ImageView;)V

    new-array v5, v3, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$SetTextTask;

    const v5, 0x7f0801ef

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/TextView;)V

    new-array v5, v3, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;

    const v5, 0x7f0800fa

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/ImageView;)V

    new-array v5, v3, [Ljava/lang/Integer;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$SetTextTask;

    const v5, 0x7f0801f0

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/TextView;)V

    new-array v5, v3, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;

    const v5, 0x7f0800fb

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/ImageView;)V

    new-array v5, v3, [Ljava/lang/Integer;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$SetTextTask;

    const v5, 0x7f0801f1

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/TextView;)V

    new-array v5, v3, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;

    const v5, 0x7f0800fc

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/ImageView;)V

    new-array v5, v3, [Ljava/lang/Integer;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$SetTextTask;

    const v5, 0x7f0801f2

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/TextView;)V

    new-array v5, v3, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;

    const v5, 0x7f0800fd

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/ImageView;)V

    new-array v5, v3, [Ljava/lang/Integer;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$SetTextTask;

    const v5, 0x7f0801f3

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/TextView;)V

    new-array v5, v3, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;

    const v5, 0x7f0800fe

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/ImageView;)V

    new-array v5, v3, [Ljava/lang/Integer;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$SetTextTask;

    const v5, 0x7f0801f4

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/TextView;)V

    new-array v5, v3, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;

    const v5, 0x7f0800ff

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/ImageView;)V

    new-array v5, v3, [Ljava/lang/Integer;

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {v2, v5}, Lcom/angara/coffeeshop/ShopMain$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    new-instance v2, Lcom/angara/coffeeshop/ShopMain$SetTextTask;

    const v5, 0x7f0801f5

    invoke-virtual {p0, v5}, Lcom/angara/coffeeshop/ShopMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v2, p0, v5}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;-><init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/TextView;)V

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    :goto_2
    return-void
.end method
