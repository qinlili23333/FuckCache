.class public abstract Lmoe/shizuku/server/IShizukuApplication$Stub;
.super Landroid/os/Binder;
.source "IShizukuApplication.java"

# interfaces
.implements Lmoe/shizuku/server/IShizukuApplication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/shizuku/server/IShizukuApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "moe.shizuku.server.IShizukuApplication"

.field static final TRANSACTION_bindApplication:I = 0x2

.field static final TRANSACTION_dispatchRequestPermissionResult:I = 0x3

.field static final TRANSACTION_showPermissionConfirmation:I = 0x2711


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "moe.shizuku.server.IShizukuApplication"

    invoke-virtual {p0, p0, v0}, Lmoe/shizuku/server/IShizukuApplication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuApplication;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "moe.shizuku.server.IShizukuApplication"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmoe/shizuku/server/IShizukuApplication;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmoe/shizuku/server/IShizukuApplication;

    return-object v1

    :cond_14
    new-instance v1, Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;

    invoke-direct {v1, p0}, Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmoe/shizuku/server/IShizukuApplication;
    .registers 1

    sget-object v0, Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuApplication;

    return-object v0
.end method

.method public static setDefaultImpl(Lmoe/shizuku/server/IShizukuApplication;)Z
    .registers 3

    sget-object v0, Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuApplication;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuApplication;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "moe.shizuku.server.IShizukuApplication"

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_5c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lmoe/shizuku/server/IShizukuApplication$Stub;->showPermissionConfirmation(IILjava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3f

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    :goto_40
    invoke-virtual {p0, v2, v3}, Lmoe/shizuku/server/IShizukuApplication$Stub;->dispatchRequestPermissionResult(ILandroid/os/Bundle;)V

    return v1

    :sswitch_44
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_56

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    goto :goto_57

    :cond_56
    const/4 v2, 0x0

    :goto_57
    invoke-virtual {p0, v2}, Lmoe/shizuku/server/IShizukuApplication$Stub;->bindApplication(Landroid/os/Bundle;)V

    return v1

    nop

    :sswitch_data_5c
    .sparse-switch
        0x2 -> :sswitch_44
        0x3 -> :sswitch_29
        0x2711 -> :sswitch_f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
