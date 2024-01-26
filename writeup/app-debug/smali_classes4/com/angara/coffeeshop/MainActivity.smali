.class public Lcom/angara/coffeeshop/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field button0:Landroid/widget/Button;

.field button1:Landroid/widget/Button;

.field button2:Landroid/widget/Button;

.field button3:Landroid/widget/Button;

.field button4:Landroid/widget/Button;

.field button5:Landroid/widget/Button;

.field button6:Landroid/widget/Button;

.field button7:Landroid/widget/Button;

.field button8:Landroid/widget/Button;

.field button9:Landroid/widget/Button;

.field button_clear:Landroid/widget/Button;

.field circle1:Landroid/view/View;

.field circle2:Landroid/view/View;

.field circle3:Landroid/view/View;

.field circle4:Landroid/view/View;

.field n1:Ljava/lang/String;

.field n2:Ljava/lang/String;

.field n3:Ljava/lang/String;

.field n4:Ljava/lang/String;

.field n_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    return-void
.end method

.method private initializeComponents()V
    .locals 1

    .line 35
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->circle1:Landroid/view/View;

    .line 36
    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->circle2:Landroid/view/View;

    .line 37
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->circle3:Landroid/view/View;

    .line 38
    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->circle4:Landroid/view/View;

    .line 40
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button1:Landroid/widget/Button;

    .line 41
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button2:Landroid/widget/Button;

    .line 42
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button3:Landroid/widget/Button;

    .line 43
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button4:Landroid/widget/Button;

    .line 44
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button5:Landroid/widget/Button;

    .line 45
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button6:Landroid/widget/Button;

    .line 46
    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button7:Landroid/widget/Button;

    .line 47
    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button8:Landroid/widget/Button;

    .line 48
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button9:Landroid/widget/Button;

    .line 49
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button0:Landroid/widget/Button;

    .line 50
    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button_clear:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button4:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button5:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button6:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button7:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button8:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button9:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button0:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->button_clear:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method private passNumber(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "n_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x7f07007c

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 137
    :pswitch_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n4:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->circle4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/angara/coffeeshop/MainActivity;->n1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/angara/coffeeshop/MainActivity;->n2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/angara/coffeeshop/MainActivity;->n3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/angara/coffeeshop/MainActivity;->n4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->CheckPasscode(Ljava/lang/String;)Z

    move-result v0

    .line 141
    .local v0, "flag":Z
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 142
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 144
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 145
    invoke-direct {p0, p1}, Lcom/angara/coffeeshop/MainActivity;->passNumber(Ljava/util/ArrayList;)V

    .line 147
    if-eqz v0, :cond_2

    .line 148
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/angara/coffeeshop/ShopMain;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v1, "intent":Landroid/content/Intent;
    new-array v2, v2, [I

    .line 150
    .local v2, "kurza":[I
    const-string v3, "kurza"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v1}, Lcom/angara/coffeeshop/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 133
    .end local v0    # "flag":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "kurza":[I
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n3:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->circle3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 135
    goto :goto_1

    .line 129
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n2:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->circle2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    goto :goto_1

    .line 125
    :pswitch_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n1:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->circle1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 127
    goto :goto_1

    .line 118
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->circle1:Landroid/view/View;

    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->circle2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->circle3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 121
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->circle4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 157
    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public CheckPasscode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "passcode"    # Ljava/lang/String;

    .line 160
    const-string v0, "1111"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/angara/coffeeshop/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u041d\u0435\u0432\u0435\u0440\u043d\u044b\u0439 \u041f\u0418\u041d-\u043a\u043e\u0434"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->passNumber(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->passNumber(Ljava/util/ArrayList;)V

    .line 108
    goto/16 :goto_0

    .line 102
    :pswitch_3
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->passNumber(Ljava/util/ArrayList;)V

    .line 104
    goto :goto_0

    .line 98
    :pswitch_4
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->passNumber(Ljava/util/ArrayList;)V

    .line 100
    goto :goto_0

    .line 94
    :pswitch_5
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->passNumber(Ljava/util/ArrayList;)V

    .line 96
    goto :goto_0

    .line 90
    :pswitch_6
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->passNumber(Ljava/util/ArrayList;)V

    .line 92
    goto :goto_0

    .line 86
    :pswitch_7
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->passNumber(Ljava/util/ArrayList;)V

    .line 88
    goto :goto_0

    .line 82
    :pswitch_8
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->passNumber(Ljava/util/ArrayList;)V

    .line 84
    goto :goto_0

    .line 78
    :pswitch_9
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->passNumber(Ljava/util/ArrayList;)V

    .line 80
    goto :goto_0

    .line 74
    :pswitch_a
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->passNumber(Ljava/util/ArrayList;)V

    .line 76
    goto :goto_0

    .line 70
    :pswitch_b
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/angara/coffeeshop/MainActivity;->n_list:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->passNumber(Ljava/util/ArrayList;)V

    .line 72
    nop

    .line 114
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080067
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/angara/coffeeshop/MainActivity;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/angara/coffeeshop/MainActivity;->initializeComponents()V

    .line 28
    invoke-static {}, Lcom/angara/coffeeshop/RootUtil;->isDeviceRooted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/angara/coffeeshop/MainActivity;->finish()V

    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 32
    :cond_0
    return-void
.end method
