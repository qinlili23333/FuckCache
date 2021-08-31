.class public final synthetic Lrikka/shizuku/-$$Lambda$YVIb6fl4B81_FPFy0YfT8kOnJRU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lrikka/shizuku/ShizukuServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lrikka/shizuku/ShizukuServiceConnection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/shizuku/-$$Lambda$YVIb6fl4B81_FPFy0YfT8kOnJRU;->f$0:Lrikka/shizuku/ShizukuServiceConnection;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    iget-object v0, p0, Lrikka/shizuku/-$$Lambda$YVIb6fl4B81_FPFy0YfT8kOnJRU;->f$0:Lrikka/shizuku/ShizukuServiceConnection;

    invoke-virtual {v0}, Lrikka/shizuku/ShizukuServiceConnection;->dead()V

    return-void
.end method
