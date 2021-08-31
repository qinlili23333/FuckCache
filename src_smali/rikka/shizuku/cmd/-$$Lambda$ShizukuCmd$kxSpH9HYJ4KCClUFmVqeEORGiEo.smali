.class public final synthetic Lrikka/shizuku/cmd/-$$Lambda$ShizukuCmd$kxSpH9HYJ4KCClUFmVqeEORGiEo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrikka/shizuku/Shizuku$OnBinderReceivedListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/shizuku/cmd/-$$Lambda$ShizukuCmd$kxSpH9HYJ4KCClUFmVqeEORGiEo;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onBinderReceived()V
    .registers 2

    iget-object v0, p0, Lrikka/shizuku/cmd/-$$Lambda$ShizukuCmd$kxSpH9HYJ4KCClUFmVqeEORGiEo;->f$0:Ljava/util/List;

    invoke-static {v0}, Lrikka/shizuku/cmd/ShizukuCmd;->lambda$main$0(Ljava/util/List;)V

    return-void
.end method
