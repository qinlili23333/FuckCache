.class public final Lrikka/shizuku/cmd/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "rikka.shizuku.cmd"

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final VERSION_CODE:I = 0x24f

.field public static final VERSION_NAME:Ljava/lang/String; = "11.6.0.r591.e729431"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lrikka/shizuku/cmd/BuildConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
