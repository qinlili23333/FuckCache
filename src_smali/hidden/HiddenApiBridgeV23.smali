.class public Lhidden/HiddenApiBridgeV23;
.super Ljava/lang/Object;
.source "HiddenApiBridgeV23.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ActivityManagerNative_asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .registers 2

    invoke-static {p0}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static getContentProviderExternal_provider(Landroid/app/IActivityManager;Ljava/lang/String;ILandroid/os/IBinder;)Landroid/content/IContentProvider;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0, p1, p2, p3}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    return-object v1

    :cond_9
    const/4 v1, 0x0

    return-object v1
.end method
