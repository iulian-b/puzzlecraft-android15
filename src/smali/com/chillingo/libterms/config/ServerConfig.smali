.class public final Lcom/chillingo/libterms/config/ServerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENDPOINT:Ljava/lang/String; = "http%3A%2F%2Fchillingo-terms.chillingocloud.com"

.field public static final ENDPOINT_FALLBACK:Ljava/lang/String; = "http://chillingo-terms.chillingocloud.com"

.field public static final GLOBAL_DEFAULT_WAIT_TIME_SECONDS:Ljava/lang/Integer;

.field public static final GLOBAL_MINIMUM_AGE:Ljava/lang/Integer;

.field public static final PLATFORM:Ljava/lang/String; = "Android"

.field public static final SDK_BUILD_NUMBER:Ljava/lang/String; = "470"

.field public static final SDK_VERSION:Ljava/lang/String; = "2.8"

.field public static final TARGET_NAME:Ljava/lang/String; = "terms"

.field public static final TERMS_API_NAME:Ljava/lang/String; = "TermsAPI"

.field public static final TERMS_API_VERSION:Ljava/lang/String; = "1.2"

.field public static final TERMS_CONFIG_PATH:Ljava/lang/String; = "getLatest"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/chillingo/libterms/config/ServerConfig;->GLOBAL_MINIMUM_AGE:Ljava/lang/Integer;

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/chillingo/libterms/config/ServerConfig;->GLOBAL_DEFAULT_WAIT_TIME_SECONDS:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCombinedSDKAndAPIString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    invoke-static {}, Lcom/chillingo/libterms/config/ServerConfig;->getSDKString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/chillingo/libterms/config/ServerConfig;->getTermsAPIString()Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "terms-2.8-470"

    return-object v0
.end method

.method public static getTermsAPIString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "TermsAPI-1.2"

    return-object v0
.end method
