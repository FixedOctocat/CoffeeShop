.class public final synthetic Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/angara/coffeeshop/ShopMain;


# direct methods
.method public synthetic constructor <init>(Lcom/angara/coffeeshop/ShopMain;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda2;->f$0:Lcom/angara/coffeeshop/ShopMain;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda2;->f$0:Lcom/angara/coffeeshop/ShopMain;

    check-cast p1, Landroid/location/Location;

    invoke-virtual {v0, p1}, Lcom/angara/coffeeshop/ShopMain;->lambda$onCreate$0$com-angara-coffeeshop-ShopMain(Landroid/location/Location;)V

    return-void
.end method
