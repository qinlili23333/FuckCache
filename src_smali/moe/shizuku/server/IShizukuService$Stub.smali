.class public abstract Lmoe/shizuku/server/IShizukuService$Stub;
.super Landroid/os/Binder;
.source "IShizukuService.java"

# interfaces
.implements Lmoe/shizuku/server/IShizukuService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/shizuku/server/IShizukuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoe/shizuku/server/IShizukuService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "moe.shizuku.server.IShizukuService"

.field static final TRANSACTION_addUserService:I = 0xc

.field static final TRANSACTION_attachApplication:I = 0xe

.field static final TRANSACTION_attachUserService:I = 0x66

.field static final TRANSACTION_checkPermission:I = 0x5

.field static final TRANSACTION_checkSelfPermission:I = 0x10

.field static final TRANSACTION_dispatchPackageChanged:I = 0x67

.field static final TRANSACTION_dispatchPermissionConfirmationResult:I = 0x69

.field static final TRANSACTION_exit:I = 0x65

.field static final TRANSACTION_getFlagsForUid:I = 0x6a

.field static final TRANSACTION_getSELinuxContext:I = 0x9

.field static final TRANSACTION_getSystemProperty:I = 0xa

.field static final TRANSACTION_getUid:I = 0x4

.field static final TRANSACTION_getVersion:I = 0x3

.field static final TRANSACTION_isHidden:I = 0x68

.field static final TRANSACTION_newProcess:I = 0x8

.field static final TRANSACTION_removeUserService:I = 0xd

.field static final TRANSACTION_requestPermission:I = 0xf

.field static final TRANSACTION_setSystemProperty:I = 0xb

.field static final TRANSACTION_shouldShowRequestPermissionRationale:I = 0x11

.field static final TRANSACTION_updateFlagsForUid:I = 0x6b


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p0, p0, v0}, Lmoe/shizuku/server/IShizukuService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmoe/shizuku/server/IShizukuService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmoe/shizuku/server/IShizukuService;

    return-object v1

    :cond_14
    new-instance v1, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmoe/shizuku/server/IShizukuService;
    .registers 1

    sget-object v0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuService;

    return-object v0
.end method

.method public static setDefaultImpl(Lmoe/shizuku/server/IShizukuService;)Z
    .registers 3

    sget-object v0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuService;

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
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "moe.shizuku.server.IShizukuService"

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_1c2

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

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lmoe/shizuku/server/IShizukuService$Stub;->updateFlagsForUid(III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lmoe/shizuku/server/IShizukuService$Stub;->getFlagsForUid(II)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_3b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_59

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_5a

    :cond_59
    const/4 v5, 0x0

    :goto_5a
    invoke-virtual {p0, v2, v3, v4, v5}, Lmoe/shizuku/server/IShizukuService$Stub;->dispatchPermissionConfirmationResult(IIILandroid/os/Bundle;)V

    return v1

    :sswitch_5e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lmoe/shizuku/server/IShizukuService$Stub;->isHidden(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_70
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_82

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_83

    :cond_82
    const/4 v2, 0x0

    :goto_83
    invoke-virtual {p0, v2}, Lmoe/shizuku/server/IShizukuService$Stub;->dispatchPackageChanged(Landroid/content/Intent;)V

    return v1

    :sswitch_87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9d

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_9e

    :cond_9d
    const/4 v3, 0x0

    :goto_9e
    invoke-virtual {p0, v2, v3}, Lmoe/shizuku/server/IShizukuService$Stub;->attachUserService(Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_a5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->exit()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_af
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->shouldShowRequestPermissionRationale()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_bd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->checkSelfPermission()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_cb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lmoe/shizuku/server/IShizukuService$Stub;->requestPermission(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_d9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmoe/shizuku/server/IShizukuApplication$Stub;->asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuApplication;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmoe/shizuku/server/IShizukuService$Stub;->attachApplication(Lmoe/shizuku/server/IShizukuApplication;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_ef
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuServiceConnection;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_109

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_10a

    :cond_109
    const/4 v3, 0x0

    :goto_10a
    invoke-virtual {p0, v2, v3}, Lmoe/shizuku/server/IShizukuService$Stub;->removeUserService(Lmoe/shizuku/server/IShizukuServiceConnection;Landroid/os/Bundle;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuServiceConnection;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12f

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_130

    :cond_12f
    const/4 v3, 0x0

    :goto_130
    invoke-virtual {p0, v2, v3}, Lmoe/shizuku/server/IShizukuService$Stub;->addUserService(Lmoe/shizuku/server/IShizukuServiceConnection;Landroid/os/Bundle;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_13b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmoe/shizuku/server/IShizukuService$Stub;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_14d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmoe/shizuku/server/IShizukuService$Stub;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_163
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->getSELinuxContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_171
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lmoe/shizuku/server/IShizukuService$Stub;->newProcess([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lmoe/shizuku/server/IRemoteProcess;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_18e

    invoke-interface {v5}, Lmoe/shizuku/server/IRemoteProcess;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    goto :goto_18f

    :cond_18e
    const/4 v6, 0x0

    :goto_18f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    :sswitch_193
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmoe/shizuku/server/IShizukuService$Stub;->checkPermission(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_1a5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->getUid()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_1b3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->getVersion()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    nop

    :sswitch_data_1c2
    .sparse-switch
        0x3 -> :sswitch_1b3
        0x4 -> :sswitch_1a5
        0x5 -> :sswitch_193
        0x8 -> :sswitch_171
        0x9 -> :sswitch_163
        0xa -> :sswitch_14d
        0xb -> :sswitch_13b
        0xc -> :sswitch_115
        0xd -> :sswitch_ef
        0xe -> :sswitch_d9
        0xf -> :sswitch_cb
        0x10 -> :sswitch_bd
        0x11 -> :sswitch_af
        0x65 -> :sswitch_a5
        0x66 -> :sswitch_87
        0x67 -> :sswitch_70
        0x68 -> :sswitch_5e
        0x69 -> :sswitch_3b
        0x6a -> :sswitch_25
        0x6b -> :sswitch_f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
