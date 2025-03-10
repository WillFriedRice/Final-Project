library(fpp3)

# Creating Index ----------------------------------------------------------

library(lubridate)
library(readr)
credit <- read_csv("credit.csv")
date <- c(Sys.Date(),Sys.Date() - months(1),Sys.Date() - months(2),Sys.Date()-months(3), Sys.Date()-months(4),Sys.Date()-months(5),
          Sys.Date() - months(6),Sys.Date() - months(7),Sys.Date()-months(8), Sys.Date()-months(9),Sys.Date()-months(10),
          Sys.Date() - months(11),Sys.Date() - months(12),Sys.Date()-months(13), Sys.Date()-months(14),Sys.Date()-months(15),
          Sys.Date() - months(16),Sys.Date() - months(17),Sys.Date()-months(18), Sys.Date()-months(19),Sys.Date()-months(20),
          Sys.Date() - months(21),Sys.Date() - months(22),Sys.Date()-months(23), Sys.Date()-months(24),Sys.Date()-months(25),
          Sys.Date() - months(26),Sys.Date() - months(27),Sys.Date()-months(28), Sys.Date()-months(29),Sys.Date()-months(30),
          Sys.Date() - months(31),Sys.Date() - months(32),Sys.Date()-months(33), Sys.Date()-months(34),Sys.Date()-months(35),
          Sys.Date() - months(36),Sys.Date() - months(37),Sys.Date()-months(38), Sys.Date()-months(39),Sys.Date()-months(40),
          Sys.Date() - months(41),Sys.Date() - months(42),Sys.Date()-months(43), Sys.Date()-months(44),Sys.Date()-months(45),
          Sys.Date() - months(46),Sys.Date() - months(47),Sys.Date()-months(48), Sys.Date()-months(49),Sys.Date()-months(50),
          Sys.Date() - months(51),Sys.Date() - months(52),Sys.Date()-months(53), Sys.Date()-months(54),Sys.Date()-months(55),
          Sys.Date() - months(56),Sys.Date() - months(57),Sys.Date()-months(58), Sys.Date()-months(59),Sys.Date()-months(60),
          Sys.Date() - months(61),Sys.Date() - months(62),Sys.Date()-months(63), Sys.Date()-months(64),Sys.Date()-months(65),
          Sys.Date() - months(66),Sys.Date() - months(67),Sys.Date()-months(68), Sys.Date()-months(69),Sys.Date()-months(70),
          Sys.Date() - months(71),Sys.Date() - months(72),Sys.Date()-months(73), Sys.Date()-months(74),Sys.Date()-months(75),
          Sys.Date() - months(76),Sys.Date() - months(77),Sys.Date()-months(78), Sys.Date()-months(79),Sys.Date()-months(80),
          Sys.Date() - months(81),Sys.Date() - months(82),Sys.Date()-months(83), Sys.Date()-months(84),Sys.Date()-months(85),
          Sys.Date() - months(86),Sys.Date() - months(87),Sys.Date()-months(88), Sys.Date()-months(89),Sys.Date()-months(90),
          Sys.Date() - months(91),Sys.Date() - months(92),Sys.Date()-months(93), Sys.Date()-months(94),Sys.Date()-months(95),
          Sys.Date() - months(96),Sys.Date() - months(97),Sys.Date()-months(98), Sys.Date()-months(99),Sys.Date()-months(100),
          Sys.Date() - months(101),Sys.Date() - months(102),Sys.Date()-months(103), Sys.Date()-months(104),Sys.Date()-months(105),
          Sys.Date() - months(106),Sys.Date() - months(107),Sys.Date()-months(108), Sys.Date()-months(109),Sys.Date()-months(110),
          Sys.Date() - months(111),Sys.Date() - months(112),Sys.Date()-months(113), Sys.Date()-months(114),Sys.Date()-months(115),
          Sys.Date() - months(116),Sys.Date() - months(117),Sys.Date()-months(118), Sys.Date()-months(119),Sys.Date()-months(120),
          Sys.Date() - months(121),Sys.Date() - months(122),Sys.Date()-months(123), Sys.Date()-months(124),Sys.Date()-months(125),
          Sys.Date() - months(126),Sys.Date() - months(127),Sys.Date()-months(128), Sys.Date()-months(129),Sys.Date()-months(130),
          Sys.Date() - months(131),Sys.Date() - months(132),Sys.Date()-months(133), Sys.Date()-months(134),Sys.Date()-months(135),
          Sys.Date() - months(136),Sys.Date() - months(137),Sys.Date()-months(138), Sys.Date()-months(139),Sys.Date()-months(140),
          Sys.Date() - months(141),Sys.Date() - months(142),Sys.Date()-months(143), Sys.Date()-months(144),Sys.Date()-months(145),
          Sys.Date() - months(146),Sys.Date() - months(147),Sys.Date()-months(148), Sys.Date()-months(149),Sys.Date()-months(150),
          Sys.Date() - months(151),Sys.Date() - months(152),Sys.Date()-months(153), Sys.Date()-months(154),Sys.Date()-months(155),
          Sys.Date() - months(156),Sys.Date() - months(157),Sys.Date()-months(158), Sys.Date()-months(159),Sys.Date()-months(160),
          Sys.Date() - months(161),Sys.Date() - months(162),Sys.Date()-months(163), Sys.Date()-months(164),Sys.Date()-months(165),
          Sys.Date() - months(166),Sys.Date() - months(167),Sys.Date()-months(168), Sys.Date()-months(169),Sys.Date()-months(170),
          Sys.Date() - months(171),Sys.Date() - months(172),Sys.Date()-months(173), Sys.Date()-months(174),Sys.Date()-months(175),
          Sys.Date() - months(176),Sys.Date() - months(177),Sys.Date()-months(178), Sys.Date()-months(179),Sys.Date()-months(180),
          Sys.Date() - months(181),Sys.Date() - months(182),Sys.Date()-months(183), Sys.Date()-months(184),Sys.Date()-months(185),
          Sys.Date() - months(186),Sys.Date() - months(187),Sys.Date()-months(188), Sys.Date()-months(189),Sys.Date()-months(190),
          Sys.Date() - months(191),Sys.Date() - months(192),Sys.Date()-months(193), Sys.Date()-months(194),Sys.Date()-months(195),
          Sys.Date() - months(196),Sys.Date() - months(197),Sys.Date()-months(198), Sys.Date()-months(199),Sys.Date()-months(200),
          Sys.Date() - months(201),Sys.Date() - months(202),Sys.Date()-months(203), Sys.Date()-months(204),Sys.Date()-months(205),
          Sys.Date() - months(206),Sys.Date() - months(207),Sys.Date()-months(208), Sys.Date()-months(209),Sys.Date()-months(210),
          Sys.Date() - months(211),Sys.Date() - months(212),Sys.Date()-months(213), Sys.Date()-months(214),Sys.Date()-months(215),
          Sys.Date() - months(216),Sys.Date() - months(217),Sys.Date()-months(218), Sys.Date()-months(219),Sys.Date()-months(220),
          Sys.Date() - months(221),Sys.Date() - months(222),Sys.Date()-months(223), Sys.Date()-months(224),Sys.Date()-months(225),
          Sys.Date() - months(226),Sys.Date() - months(227),Sys.Date()-months(228), Sys.Date()-months(229),Sys.Date()-months(230),
          Sys.Date() - months(231),Sys.Date() - months(232),Sys.Date()-months(233), Sys.Date()-months(234),Sys.Date()-months(235),
          Sys.Date() - months(236),Sys.Date() - months(237),Sys.Date()-months(238), Sys.Date()-months(239),Sys.Date()-months(240),
          Sys.Date() - months(241),Sys.Date() - months(242),Sys.Date()-months(243), Sys.Date()-months(244),Sys.Date()-months(245),
          Sys.Date() - months(246),Sys.Date() - months(247),Sys.Date()-months(248), Sys.Date()-months(249),Sys.Date()-months(250),
          Sys.Date() - months(251),Sys.Date() - months(252),Sys.Date()-months(253), Sys.Date()-months(254),Sys.Date()-months(255),
          Sys.Date() - months(256),Sys.Date() - months(257),Sys.Date()-months(258), Sys.Date()-months(259),Sys.Date()-months(260),
          Sys.Date() - months(261),Sys.Date() - months(262),Sys.Date()-months(263), Sys.Date()-months(264),Sys.Date()-months(265),
          Sys.Date() - months(266),Sys.Date() - months(267),Sys.Date()-months(268), Sys.Date()-months(269),Sys.Date()-months(270),
          Sys.Date() - months(271),Sys.Date() - months(272),Sys.Date()-months(273), Sys.Date()-months(274),Sys.Date()-months(275),
          Sys.Date() - months(276),Sys.Date() - months(277),Sys.Date()-months(278), Sys.Date()-months(279),Sys.Date()-months(280),
          Sys.Date() - months(281),Sys.Date() - months(282),Sys.Date()-months(283), Sys.Date()-months(284),Sys.Date()-months(285),
          Sys.Date() - months(286),Sys.Date() - months(287),Sys.Date()-months(288), Sys.Date()-months(289),Sys.Date()-months(290),
          Sys.Date() - months(291),Sys.Date() - months(292),Sys.Date()-months(293), Sys.Date()-months(294),Sys.Date()-months(295),
          Sys.Date() - months(296),Sys.Date() - months(297),Sys.Date()-months(298), Sys.Date()-months(299),Sys.Date()-months(300),
          Sys.Date() - months(301),Sys.Date() - months(302),Sys.Date()-months(303), Sys.Date()-months(304),Sys.Date()-months(305),
          Sys.Date() - months(306),Sys.Date() - months(307),Sys.Date()-months(308), Sys.Date()-months(309),Sys.Date()-months(310),
          Sys.Date() - months(311),Sys.Date() - months(312),Sys.Date()-months(313), Sys.Date()-months(314),Sys.Date()-months(315),
          Sys.Date() - months(316),Sys.Date() - months(317),Sys.Date()-months(318), Sys.Date()-months(319),Sys.Date()-months(320),
          Sys.Date() - months(321),Sys.Date() - months(322),Sys.Date()-months(323), Sys.Date()-months(324),Sys.Date()-months(325),
          Sys.Date() - months(326),Sys.Date() - months(327),Sys.Date()-months(328), Sys.Date()-months(329),Sys.Date()-months(330),
          Sys.Date() - months(331),Sys.Date() - months(332),Sys.Date()-months(333), Sys.Date()-months(334),Sys.Date()-months(335),
          Sys.Date() - months(336),Sys.Date() - months(337),Sys.Date()-months(338), Sys.Date()-months(339),Sys.Date()-months(340),
          Sys.Date() - months(341),Sys.Date() - months(342),Sys.Date()-months(343), Sys.Date()-months(344),Sys.Date()-months(345),
          Sys.Date() - months(346),Sys.Date() - months(347),Sys.Date()-months(348), Sys.Date()-months(349),Sys.Date()-months(350),
          Sys.Date() - months(351),Sys.Date() - months(352),Sys.Date()-months(353), Sys.Date()-months(354),Sys.Date()-months(355),
          Sys.Date() - months(356),Sys.Date() - months(357),Sys.Date()-months(358), Sys.Date()-months(359),Sys.Date()-months(360),
          Sys.Date() - months(361),Sys.Date() - months(362),Sys.Date()-months(363), Sys.Date()-months(364),Sys.Date()-months(365),
          Sys.Date() - months(366),Sys.Date() - months(367),Sys.Date()-months(368), Sys.Date()-months(369),Sys.Date()-months(370),
          Sys.Date() - months(371),Sys.Date() - months(372),Sys.Date()-months(373), Sys.Date()-months(374),Sys.Date()-months(375),
          Sys.Date() - months(376),Sys.Date() - months(377),Sys.Date()-months(378), Sys.Date()-months(379),Sys.Date()-months(380),
          Sys.Date() - months(381),Sys.Date() - months(382),Sys.Date()-months(383), Sys.Date()-months(384),Sys.Date()-months(385),
          Sys.Date() - months(386),Sys.Date() - months(387),Sys.Date()-months(388), Sys.Date()-months(389),Sys.Date()-months(390),
          Sys.Date() - months(391),Sys.Date() - months(392),Sys.Date()-months(393), Sys.Date()-months(394),Sys.Date()-months(395),
          Sys.Date() - months(396),Sys.Date() - months(397),Sys.Date()-months(398), Sys.Date()-months(399),Sys.Date()-months(400),
          Sys.Date() - months(401),Sys.Date() - months(402),Sys.Date()-months(403), Sys.Date()-months(404),Sys.Date()-months(405),
          Sys.Date() - months(406),Sys.Date() - months(407),Sys.Date()-months(408), Sys.Date()-months(409),Sys.Date()-months(410),
          Sys.Date() - months(411),Sys.Date() - months(412),Sys.Date()-months(413), Sys.Date()-months(414),Sys.Date()-months(415),
          Sys.Date() - months(416),Sys.Date() - months(417),Sys.Date()-months(418), Sys.Date()-months(419),Sys.Date()-months(420),
          Sys.Date() - months(421),Sys.Date() - months(422),Sys.Date()-months(423), Sys.Date()-months(424),Sys.Date()-months(425),
          Sys.Date() - months(426),Sys.Date() - months(427),Sys.Date()-months(428), Sys.Date()-months(429),Sys.Date()-months(430),
          Sys.Date() - months(431),Sys.Date() - months(432),Sys.Date()-months(433), Sys.Date()-months(434),Sys.Date()-months(435),
          Sys.Date() - months(436),Sys.Date() - months(437),Sys.Date()-months(438), Sys.Date()-months(439),Sys.Date()-months(440),
          Sys.Date() - months(441),Sys.Date() - months(442),Sys.Date()-months(443), Sys.Date()-months(444),Sys.Date()-months(445),
          Sys.Date() - months(446),Sys.Date() - months(447),Sys.Date()-months(448), Sys.Date()-months(449),Sys.Date()-months(450),
          Sys.Date() - months(451),Sys.Date() - months(452),Sys.Date()-months(453), Sys.Date()-months(454),Sys.Date()-months(455),
          Sys.Date() - months(456),Sys.Date() - months(457),Sys.Date()-months(458), Sys.Date()-months(459),Sys.Date()-months(460),
          Sys.Date() - months(461),Sys.Date() - months(462),Sys.Date()-months(463), Sys.Date()-months(464),Sys.Date()-months(465),
          Sys.Date() - months(466),Sys.Date() - months(467),Sys.Date()-months(468), Sys.Date()-months(469),Sys.Date()-months(470),
          Sys.Date() - months(471),Sys.Date() - months(472),Sys.Date()-months(473), Sys.Date()-months(474),Sys.Date()-months(475),
          Sys.Date() - months(476),Sys.Date() - months(477),Sys.Date()-months(478), Sys.Date()-months(479),Sys.Date()-months(480),
          Sys.Date() - months(481),Sys.Date() - months(482),Sys.Date()-months(483), Sys.Date()-months(484),Sys.Date()-months(485),
          Sys.Date() - months(486),Sys.Date() - months(487),Sys.Date()-months(488), Sys.Date()-months(489),Sys.Date()-months(490),
          Sys.Date() - months(491))
date
credit$Month <- date

Credit <- credit %>% 
  mutate(Month=yearmonth(Month)) %>% 
  as_tsibble(index=Month)




# Transformation ----------------------------------------------------------
Credit %>% autoplot()
# Homoskedastic so no mathematical transformations needed
# There is a trend so it is not stationary
Credit %>% ACF(credit_in_millions) %>% 
  autoplot() + labs(subtitle = "Credit in Millions")
# The ACF plot also shows that it is not stationary
Credit %>%
  features(credit_in_millions, unitroot_kpss)
# The p-value is less than 0.01 so the data is not stationary
Credit %>% 
  features(credit_in_millions,unitroot_ndiffs)
# One difference is required to make the data stationary
Credit %>% 
  features(credit_in_millions,unitroot_nsdiffs)
# No seasonal difference is required
Credit %>% 
  mutate(differenced_credit = difference(credit_in_millions)) %>% 
  select(differenced_credit) %>% autoplot()
Credit %>% 
  mutate(differenced_credit = difference(credit_in_millions)) %>% 
  ACF(differenced_credit) %>% autoplot() + labs(subtitle="Changes in Credit in Millions")
Credit <- Credit %>% 
  mutate(differenced_credit = difference(credit_in_millions))

# Modeling 1 --------------------------------------------------------------
#Training
Credit2 <- head(Credit,nrow(Credit)*.8)

#Linear Models (Exponential, Trend, Piecewise)
fit_linear <- Credit2 %>% 
  model(trend_model = TSLM(credit_in_millions ~ trend()),
        exponential = TSLM(log(credit_in_millions) ~ trend()),
        piecewise = TSLM(credit_in_millions ~ trend(knots = c(head(Credit$Month,1), tail(Credit$Month,1))))
        )
report(fit_linear)

#Checking Residuals, Error 
augment(fit_linear)
accuracy(fit_linear)

#Plotting Model With Credit Values
Credit2 %>%
  autoplot(credit_in_millions) +
  geom_line(data = fitted(fit_linear),
            aes(y = .fitted, colour = .model)) +
  labs(y = "Minutes",
       title = "Boston marathon winning times")

# Viewing the plot alone tells us these models are bad. The models seem to not follow the data well, but they do follow the trend. Overall, these models are poor. To back this up, the RMSEs indicate misses by 123,000 and 124,000 credits for the trend and piecewise models and the exponential model, respectively.


#Fourier Model

fit_fourier <- Credit2 %>%
  model(m1 = TSLM(differenced_credit ~ trend() + fourier(K = 1)),
  m2 = TSLM(differenced_credit ~ trend() + fourier(K = 2)),
  m3 = TSLM(differenced_credit ~ trend() + fourier(K = 3)),
  m4 = TSLM(differenced_credit ~ trend() + fourier(K = 4)),
  m5 = TSLM(differenced_credit ~ trend() + fourier(K = 5)),
  m6 = TSLM(differenced_credit ~ trend() + fourier(K = 6)))

#Selecting Best Fit Based on AIC
glance(fit_fourier) %>%
  arrange(AIC, CV)

best_fit_fourier <- fit_fourier %>%
  select(m1)

#Viewing Residuals 
gg_tsresiduals(best_fit_fourier)
accuracy(best_fit_fourier)

#Viewing Plot
augment(best_fit_fourier) %>%
  ggplot(aes(x = Month)) +
  geom_line(aes(y = differenced_credit, colour = "Data")) +
  geom_line(aes(y = .fitted, colour = "Fitted")) +
  labs(y = NULL,
       title = "Linear Model Based on Differenced Credit")

#The model with the lowest AIC is model 1 with one harmonic. Its residuals seem to me normally distributed. The center of spread for the residuals seems to be 0, but there are a lot of extreme values. The ACF plot shows little significance. The harmonics seem to give a bad model. The RMSE is .0986, which means the model misses on average by nearly 100,000 credits.

#ETS Model Creation
fit_exponential <- Credit2 %>%
  model(ETS(credit_in_millions))
report(fit_exponential)

#ETS Model Examination
components(fit_exponential) %>%
  autoplot() +
  labs(title = "ETS(M,N,A) components")
accuracy(fit_exponential)
#The remainder for the ETS, the residuals, seem to be heteroskedastic, have extreme values, but is somewhat centered on zero. The RMSE is .0868, denoting an average miss of 868,000 credits.

#Non-seasonal ARIMA model fit
fit_ARIMA <- Credit2 %>%
  model(ARIMA(differenced_credit))
report(fit_ARIMA)
  
#Checking model
gg_tsresiduals(fit_ARIMA)
accuracy(fit_ARIMA)

#The non-seasonal ARIMA seems to be a 3,0,0 model. It has an RMSE of .0900 on the differenced credit. This indicates a miss of about 900,000 credits, which is the lowest RMSE seen so far. The residuals seem to be normally distributed and centered around 0, but there a couple extreme residuals as well.

#fitting to holdout
Credit3 <- tail(Credit,.2*nrow(Credit))

Credit_stretch <- Credit %>%
  slice(-n()) %>%
  stretch_tsibble(.init = 1)

Credit_stretch %>%
  model(m1 = TSLM(credit_in_millions ~ trend() + fourier(K = 1)),
        m2 = TSLM(credit_in_millions ~ trend() + fourier(K = 2)),
        m3 = TSLM(credit_in_millions ~ trend() + fourier(K = 3)),
        m4 = TSLM(credit_in_millions ~ trend() + fourier(K = 4)),
        m5 = TSLM(credit_in_millions ~ trend() + fourier(K = 5)),
        m6 = TSLM(credit_in_millions ~ trend() + fourier(K = 6)),
        ets = ETS(credit_in_millions),
        arima = ARIMA(credit_in_millions)
  ) %>%
  forecast(h = 12) %>%
  accuracy(Credit) %>%
  select(.model, RMSE:MAPE)

mm
aus_economy <- global_economy %>%
  filter(Code == "AUS") %>%
  mutate(Population = Population/1e6)

aus_economy %>%
  slice(-n()) %>%
  stretch_tsibble(.init = 10) %>%
  model(
    ETS(Population),
    ARIMA(Population)
  ) %>%
  forecast(h = 1) %>%
  accuracy(aus_economy) %>%
  select(.model, RMSE:MAPE)