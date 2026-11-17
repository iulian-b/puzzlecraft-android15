.class public final Lcom/chillingo/libterms/model/TermsConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x34da8f9e764ebc59L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgeFailureWaitTime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAgeRequired()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getEula()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiresReaccept()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRequiresTermsAccept()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTermsOfService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/chillingo/libterms/model/TermsConfig;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAgeFailureWaitTime(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "ageFailureWaitTime"    # Ljava/lang/Integer;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->i:Ljava/lang/Integer;

    .line 111
    return-void
.end method

.method public setAgeRequired(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "ageRequired"    # Ljava/lang/Integer;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->f:Ljava/lang/Integer;

    .line 87
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->g:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setEula(Ljava/lang/String;)V
    .locals 0
    .param p1, "eula"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setPrivacyPolicy(Ljava/lang/String;)V
    .locals 0
    .param p1, "privacyPolicy"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->c:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setRequiresReaccept(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "requiresReaccept"    # Ljava/lang/Boolean;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->e:Ljava/lang/Boolean;

    .line 79
    return-void
.end method

.method public setRequiresTermsAccept(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "requiresTermsAccept"    # Ljava/lang/Boolean;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->h:Ljava/lang/Boolean;

    .line 103
    return-void
.end method

.method public setTermsOfService(Ljava/lang/String;)V
    .locals 0
    .param p1, "termsOfService"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setVersion(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/Integer;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/chillingo/libterms/model/TermsConfig;->d:Ljava/lang/Integer;

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TermsConfig{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v1, "termsOfService=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, ", eula=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, ", privacyPolicy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", requiresReaccept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->e:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", ageRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", countryCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ", requiresTermsAccept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->h:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", ageFailureWaitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/model/TermsConfig;->i:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
