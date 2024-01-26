.class public final Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;
.super Ljava/lang/Object;
.source "ActivityShopBuyBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final button11:Landroid/widget/Button;

.field public final buy:Landroid/widget/Button;

.field public final buyKurza:Landroid/widget/TextView;

.field public final buyPrice:Landroid/widget/TextView;

.field public final linearLayout3:Landroid/widget/LinearLayout;

.field public final profile:Landroid/widget/Button;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final settings:Landroid/widget/Button;

.field public final shop:Landroid/widget/Button;

.field public final textView9:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "button11"    # Landroid/widget/Button;
    .param p3, "buy"    # Landroid/widget/Button;
    .param p4, "buyKurza"    # Landroid/widget/TextView;
    .param p5, "buyPrice"    # Landroid/widget/TextView;
    .param p6, "linearLayout3"    # Landroid/widget/LinearLayout;
    .param p7, "profile"    # Landroid/widget/Button;
    .param p8, "settings"    # Landroid/widget/Button;
    .param p9, "shop"    # Landroid/widget/Button;
    .param p10, "textView9"    # Landroid/widget/TextView;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    iput-object p2, p0, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;->button11:Landroid/widget/Button;

    .line 57
    iput-object p3, p0, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;->buy:Landroid/widget/Button;

    .line 58
    iput-object p4, p0, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;->buyKurza:Landroid/widget/TextView;

    .line 59
    iput-object p5, p0, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;->buyPrice:Landroid/widget/TextView;

    .line 60
    iput-object p6, p0, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;->linearLayout3:Landroid/widget/LinearLayout;

    .line 61
    iput-object p7, p0, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;->profile:Landroid/widget/Button;

    .line 62
    iput-object p8, p0, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;->settings:Landroid/widget/Button;

    .line 63
    iput-object p9, p0, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;->shop:Landroid/widget/Button;

    .line 64
    iput-object p10, p0, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;->textView9:Landroid/widget/TextView;

    .line 65
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;
    .locals 23
    .param p0, "rootView"    # Landroid/view/View;

    .line 94
    move-object/from16 v0, p0

    const v1, 0x7f08006a

    .line 95
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 96
    .local v2, "button11":Landroid/widget/Button;
    if-eqz v2, :cond_8

    .line 100
    const v1, 0x7f080076

    .line 101
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/Button;

    .line 102
    .local v14, "buy":Landroid/widget/Button;
    if-eqz v14, :cond_7

    .line 106
    const v1, 0x7f080077

    .line 107
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 108
    .local v15, "buyKurza":Landroid/widget/TextView;
    if-eqz v15, :cond_6

    .line 112
    const v1, 0x7f080078

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 114
    .local v16, "buyPrice":Landroid/widget/TextView;
    if-eqz v16, :cond_5

    .line 118
    const v1, 0x7f080115

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/LinearLayout;

    .line 120
    .local v17, "linearLayout3":Landroid/widget/LinearLayout;
    if-eqz v17, :cond_4

    .line 124
    const v1, 0x7f08017b

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/Button;

    .line 126
    .local v18, "profile":Landroid/widget/Button;
    if-eqz v18, :cond_3

    .line 130
    const v1, 0x7f0801ae

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/Button;

    .line 132
    .local v19, "settings":Landroid/widget/Button;
    if-eqz v19, :cond_2

    .line 136
    const v1, 0x7f0801b1

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/Button;

    .line 138
    .local v20, "shop":Landroid/widget/Button;
    if-eqz v20, :cond_1

    .line 142
    const v1, 0x7f0801f6

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    .line 144
    .local v21, "textView9":Landroid/widget/TextView;
    if-eqz v21, :cond_0

    .line 148
    new-instance v22, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v3, v22

    move-object v5, v2

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    invoke-direct/range {v3 .. v13}, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V

    return-object v22

    .line 145
    :cond_0
    goto :goto_0

    .line 139
    .end local v21    # "textView9":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 133
    .end local v20    # "shop":Landroid/widget/Button;
    :cond_2
    goto :goto_0

    .line 127
    .end local v19    # "settings":Landroid/widget/Button;
    :cond_3
    goto :goto_0

    .line 121
    .end local v18    # "profile":Landroid/widget/Button;
    :cond_4
    goto :goto_0

    .line 115
    .end local v17    # "linearLayout3":Landroid/widget/LinearLayout;
    :cond_5
    goto :goto_0

    .line 109
    .end local v16    # "buyPrice":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 103
    .end local v15    # "buyKurza":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 97
    .end local v14    # "buy":Landroid/widget/Button;
    :cond_8
    nop

    .line 151
    .end local v2    # "button11":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 81
    const v0, 0x7f0b001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    :cond_0
    invoke-static {v0}, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;->bind(Landroid/view/View;)Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/angara/coffeeshop/databinding/ActivityShopBuyBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
