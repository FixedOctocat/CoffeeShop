.class public final synthetic Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/angara/coffeeshop/ShopMain;

.field public final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda0;->f$0:Lcom/angara/coffeeshop/ShopMain;

    iput-object p2, p0, Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda0;->f$0:Lcom/angara/coffeeshop/ShopMain;

    iget-object v1, p0, Lcom/angara/coffeeshop/ShopMain$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1, p2}, Lcom/angara/coffeeshop/ShopMain;->lambda$AddCoffee$2$com-angara-coffeeshop-ShopMain(Landroid/widget/ImageView;Landroid/content/DialogInterface;I)V

    return-void
.end method
