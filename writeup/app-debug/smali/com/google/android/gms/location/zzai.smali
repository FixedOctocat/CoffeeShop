.class public final Lcom/google/android/gms/location/zzai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.0.1"


# direct methods
.method public static zza(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    const-string p0, "THROTTLE_NEVER"

    return-object p0

    :pswitch_1
    const-string p0, "THROTTLE_ALWAYS"

    return-object p0

    :pswitch_2
    const-string p0, "THROTTLE_BACKGROUND"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
