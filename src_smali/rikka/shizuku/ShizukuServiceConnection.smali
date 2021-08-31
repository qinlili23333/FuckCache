.class Lrikka/shizuku/ShizukuServiceConnection;
.super Lmoe/shizuku/server/IShizukuServiceConnection$Stub;
.source "ShizukuServiceConnection.java"


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lrikka/shizuku/ShizukuServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAIN_HANDLER:Landroid/os/Handler;


# instance fields
.field private final componentName:Landroid/content/ComponentName;

.field private final connections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private dead:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lrikka/shizuku/ShizukuServiceConnection;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lrikka/shizuku/ShizukuServiceConnection;->CACHE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lrikka/shizuku/Shizuku$UserServiceArgs;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    invoke-direct {p0}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->connections:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->dead:Z

    iget-object v0, p1, Lrikka/shizuku/Shizuku$UserServiceArgs;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->componentName:Landroid/content/ComponentName;

    return-void
.end method

.method static get(Lrikka/shizuku/Shizuku$UserServiceArgs;)Lrikka/shizuku/ShizukuServiceConnection;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    iget-object v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->tag:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->tag:Ljava/lang/String;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_d
    sget-object v1, Lrikka/shizuku/ShizukuServiceConnection;->CACHE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrikka/shizuku/ShizukuServiceConnection;

    return-object v1
.end method

.method static getOrCreate(Lrikka/shizuku/Shizuku$UserServiceArgs;)Lrikka/shizuku/ShizukuServiceConnection;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    iget-object v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->tag:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->tag:Ljava/lang/String;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_d
    sget-object v1, Lrikka/shizuku/ShizukuServiceConnection;->CACHE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrikka/shizuku/ShizukuServiceConnection;

    if-nez v2, :cond_20

    new-instance v3, Lrikka/shizuku/ShizukuServiceConnection;

    invoke-direct {v3, p0}, Lrikka/shizuku/ShizukuServiceConnection;-><init>(Lrikka/shizuku/Shizuku$UserServiceArgs;)V

    move-object v2, v3

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-object v2
.end method


# virtual methods
.method public addConnection(Landroid/content/ServiceConnection;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conn"
        }
    .end annotation

    if-eqz p1, :cond_7

    iget-object v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->connections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public connected(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    sget-object v0, Lrikka/shizuku/ShizukuServiceConnection;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v1, Lrikka/shizuku/-$$Lambda$ShizukuServiceConnection$dRLE4iCN8dUYTq07ZEObwe-agvM;

    invoke-direct {v1, p0, p1}, Lrikka/shizuku/-$$Lambda$ShizukuServiceConnection$dRLE4iCN8dUYTq07ZEObwe-agvM;-><init>(Lrikka/shizuku/ShizukuServiceConnection;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_a
    new-instance v0, Lrikka/shizuku/-$$Lambda$YVIb6fl4B81_FPFy0YfT8kOnJRU;

    invoke-direct {v0, p0}, Lrikka/shizuku/-$$Lambda$YVIb6fl4B81_FPFy0YfT8kOnJRU;-><init>(Lrikka/shizuku/ShizukuServiceConnection;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    move-exception v0

    :goto_15
    return-void
.end method

.method public dead()V
    .registers 3

    iget-boolean v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->dead:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->dead:Z

    sget-object v0, Lrikka/shizuku/ShizukuServiceConnection;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v1, Lrikka/shizuku/-$$Lambda$ShizukuServiceConnection$wLoqlqK82j_MGj5NKisDDf82rNo;

    invoke-direct {v1, p0}, Lrikka/shizuku/-$$Lambda$ShizukuServiceConnection$wLoqlqK82j_MGj5NKisDDf82rNo;-><init>(Lrikka/shizuku/ShizukuServiceConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$connected$0$ShizukuServiceConnection(Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->connections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    iget-object v2, p0, Lrikka/shizuku/ShizukuServiceConnection;->componentName:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p1}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public synthetic lambda$dead$1$ShizukuServiceConnection()V
    .registers 4

    iget-object v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->connections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    iget-object v2, p0, Lrikka/shizuku/ShizukuServiceConnection;->componentName:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public removeConnection(Landroid/content/ServiceConnection;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conn"
        }
    .end annotation

    if-eqz p1, :cond_7

    iget-object v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->connections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method
